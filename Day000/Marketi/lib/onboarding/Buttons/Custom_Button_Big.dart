import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BigButton extends StatelessWidget {
  final VoidCallback pressedFunction;
  final String Title;
  const BigButton({
    super.key,
    required this.pressedFunction,
    required this.Title,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(),
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 40.h,
        child: Text(
          Title,
          style: TextStyle(color: Colors.white, fontSize: 20.sp),
        ),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 10, 75, 149).withAlpha(200),
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(5.r),
        ),
      ),
      onPressed: () => pressedFunction,
    );
  }
}
