import 'package:Marketi/onboarding/custom_page_view.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoarding extends StatefulWidget {
  static const String routeName = '/onboarding';
  final String title;

  const OnBoarding({super.key, required this.title});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final GlobalKey<IntroductionScreenState> _introKey =
      GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Spacer(flex: 2),
          CustomPageView(introKey: _introKey),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}
