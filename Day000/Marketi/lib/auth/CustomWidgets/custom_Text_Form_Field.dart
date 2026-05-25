import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final IconData prefixIcon;
  final bool obscure;
  const CustomTextFormField({
    super.key,
    required this.labelText,
    required this.prefixIcon,
    this.obscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: const Color.fromARGB(255, 0, 60, 224),
      obscureText: obscure,
      decoration: InputDecoration(
        prefixIcon: Icon(
          prefixIcon,
          color: const Color.fromARGB(255, 0, 60, 224),
        ),
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.r)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.r)),
          borderSide: BorderSide(
            color: Color.fromARGB(
              255,
              0,
              60,
              224,
            ).withAlpha(80), // Your custom color
            width: 2.0, // Subtle thickness for idle state
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.r)),
          borderSide: BorderSide(
            color: Color.fromARGB(255, 0, 60, 224), // Your custom color
            width: 2.0, // Subtle thickness for focused state
          ),
        ),
      ),
    );
  }
}
