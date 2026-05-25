import 'package:Marketi/auth/CustomWidgets/custom_check_box.dart';
import 'package:Marketi/auth/CustomWidgets/custom_forgot_password.dart';
import 'package:Marketi/auth/CustomWidgets/custom_form.dart';
import 'package:Marketi/auth/CustomWidgets/custom_icons_container.dart';
import 'package:Marketi/onboarding/Buttons/Custom_Button_Big.dart';
import 'package:flutter/material.dart';
import 'package:Marketi/onboarding/Buttons/Custom_Button_small.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInView extends StatefulWidget {
  static const String routeName = '/sign_in_view';

  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              minimum: EdgeInsets.only(top: 50.h, right: 10.w, left: 10.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      SmallButton(pressedFunction: () {}),
                      Spacer(),
                    ],
                  ),
                  SizedBox(height: 0),
                  Center(
                    child: Container(
                      height: 300.h,

                      child: Image.asset("assets/logo2.png"),
                    ),
                  ),
                  CustomForm(),
                  SizedBox(height: 5.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomCheckBox(),
                      Spacer(),
                      CustomForgotPassword(),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  BigButton(pressedFunction: () {}, Title: 'Log in'),
                  SizedBox(height: 8.h),
                  Text(
                    'Or continue with',
                    style: TextStyle(
                      color: Color.fromARGB(255, 70, 77, 83),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      height: 1.34,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 0,
                    children: [
                      IconsContainer(icon: 'Google.png', onpressed: () {}),
                      IconsContainer(icon: 'Facebook.png', onpressed: () {}),
                      IconsContainer(icon: 'Apple.png', onpressed: () {}),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          color: Color.fromARGB(255, 70, 77, 83),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          height: 1.34,
                        ),
                      ),
                      Text(
                        "Sign up",
                        style: TextStyle(
                          color: Color.fromARGB(255, 32, 110, 178),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          height: 1.34,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
