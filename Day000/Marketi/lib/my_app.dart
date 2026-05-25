import 'package:Marketi/auth/forgot_password_view.dart';
import 'package:Marketi/auth/sign_in_view.dart';
import 'package:Marketi/first_Page.dart';
import 'package:Marketi/onboarding/on_Boarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'package:flutter/flutter_screenutil';

class my_App extends StatelessWidget {
  const my_App({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => OnBoarding(title: 'Onboarding'),
          SignInView.routeName: (context) => SignInView(),
          FirstPage.routeName: (context) => FirstPage(),
          ForgotPasswordView.routeName: (context) => ForgotPasswordView(),
        },
      ),
    );
  }
}
