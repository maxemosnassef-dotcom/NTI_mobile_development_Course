import 'package:Marketi/auth/CustomWidgets/custom_Text_Form_Field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(
            labelText: 'Email',
            prefixIcon: Icons.email_outlined,
            obscure: false,
          ),
          SizedBox(height: 16.h),
          CustomTextFormField(
            labelText: 'Password',
            prefixIcon: Icons.lock_outlined,
            obscure: true,
          ),
        ],
      ),
    );
  }
}
