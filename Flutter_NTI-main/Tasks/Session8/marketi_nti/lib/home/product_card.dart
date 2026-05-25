import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.item});

  final dynamic item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 145.h,
      width: double.infinity,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Image.network(item['thumbnail'], fit: BoxFit.contain),
      ),
    );
  }
}
