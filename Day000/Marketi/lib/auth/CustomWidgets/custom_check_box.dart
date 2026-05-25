import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 32.r,
          child: Checkbox.adaptive(
            activeColor: Colors.blue,
            visualDensity: VisualDensity
                .compact, // 2. Shrinks the internal material padding
            materialTapTargetSize: MaterialTapTargetSize
                .shrinkWrap, // 3. Removes the default 48x48 target restriction
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4.r)),
            ),
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
        ),
        SizedBox(width: 1.r),
        Text(
          'Remember Me',
          style: TextStyle(
            color: Color(0xFF51526B),
            fontSize: 14,

            fontWeight: FontWeight.w400,
            height: 1.34,
          ),
        ),
      ],
    );
  }
}
