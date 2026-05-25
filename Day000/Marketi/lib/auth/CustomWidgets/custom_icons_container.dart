import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconsContainer extends StatelessWidget {
  final String icon;
  final VoidCallback onpressed;
  const IconsContainer({
    super.key,
    required this.icon,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: CircleBorder(),
      clipBehavior: Clip.antiAlias,
      onPressed: () {
        onpressed();
      },
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.blue),
        ),
        height: 50.h,
        width: 50.w,
        padding: EdgeInsets.all(12.w),
        child: Image.asset("assets/icons/$icon", fit: BoxFit.contain),
      ),
    );
  }
}
