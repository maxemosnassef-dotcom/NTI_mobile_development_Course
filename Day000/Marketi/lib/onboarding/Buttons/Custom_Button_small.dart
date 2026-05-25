import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmallButton extends StatelessWidget {
  final VoidCallback pressedFunction;
  const SmallButton({super.key, required this.pressedFunction});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(),
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
      onPressed: pressedFunction,
    );
  }
}
