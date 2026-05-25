import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_nti/home/product_card.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      minimum: EdgeInsets.only(top: 35.h),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leadingWidth: 200,
          leading: Row(
            children: [
              SizedBox(width: 20),
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(
                  'assets/images/A_professional_high-resolution_studio_headshot_202605150358.jpeg',
                ),
              ),
              SizedBox(width: 10.w),
              Text(
                "Hi, Maximos",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 14.0),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icons/Bell_Icon_UIA.png',
                  width: 24.w,
                  height: 24.h,
                ),
              ),
            ),
          ],
        ),
        body: FutureBuilder(
          future: getAllProducts(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return const Center(child: CircularProgressIndicator());

              case ConnectionState.done:
                if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                }

                if (snapshot.hasData && snapshot.data != null) {
                  final data = snapshot.data as Map<String, dynamic>;

                  final products = data['products'] as List;
                  return GridView.builder(
                    padding: EdgeInsets.all(10.w),
                    itemCount: products.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 20,
                          childAspectRatio: 0.75,
                        ),
                    itemBuilder: (context, index) {
                      final item = products[index];
                      return Column(
                        children: [
                          ProductCard(item: item),
                          SizedBox(height: 5.h),
                          Text(
                            item['title'] ?? '',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            '\$${item['price'] ?? ''}',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      );
                    },
                  );
                }
                return const Center(child: Text('No data found'));

              case ConnectionState.none:
                return const Center(child: Text('No connection'));

              case ConnectionState.active:
                return const Center(child: Text('Active connection'));
            }
          },
        ),
      ),
    );
  }
}

getAllProducts() async {
  final dio = Dio();
  final response = await dio.get('https://dummyjson.com/products');
  return response.data;
}
