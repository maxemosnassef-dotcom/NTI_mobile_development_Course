import 'package:Marketi/auth/forgot_password_view.dart';
import 'package:flutter/material.dart';

class CustomForgotPassword extends StatelessWidget {
  const CustomForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.pushNamed(context, ForgotPasswordView.routeName);
      },
      child: Text(
        'Forgot Password?',
        style: TextStyle(
          color: Color.fromARGB(255, 32, 110, 178),
          fontSize: 14,
          fontWeight: FontWeight.w600,
          height: 1.34,
        ),
      ),
    );
  }
}
