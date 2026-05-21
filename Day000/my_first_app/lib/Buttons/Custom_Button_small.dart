import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_first_app/first_Page.dart';
import 'package:my_first_app/first_Page.dart';

class SmallButton extends StatelessWidget {
  const SmallButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Container(
        alignment: Alignment.center,
        width: 80.h,
        height: 40.h,
        child: Text("Skip", style: TextStyle(fontSize: 20.sp)),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(50.r),
        ),
      ),
      onPressed: () {
        Navigator.pushReplacementNamed(context, FirstPage.routeName);
      },
    );
  }
}
