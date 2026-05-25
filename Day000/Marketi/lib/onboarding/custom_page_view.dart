import 'package:Marketi/auth/sign_in_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';

class CustomPageView extends StatefulWidget {
  final GlobalKey<IntroductionScreenState> introKey;

  const CustomPageView({super.key, required this.introKey});

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  int _currentPage = 0;
  final int _totalPages = 3;

  void _onIntroEnd(BuildContext context) {
    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: (_) => const SignInView()));
  }

  @override
  Widget build(BuildContext context) {
    // Determine button text dynamically based on the current page index
    final String buttonText = (_currentPage == _totalPages - 1)
        ? 'Get Started'
        : 'Next';

    return IntroductionScreen(
      key: widget.introKey,
      controlsPosition: Position(bottom: 50.h, left: 20.w, right: 20.w),
      dotsDecorator: const DotsDecorator(
        activeColor: Color(0xFF001640),
        size: Size(16, 16),
        activeSize: Size(22, 22),
      ),
      onChange: (index) {
        setState(() {
          _currentPage = index;
        });
      },
      globalFooter: SizedBox(
        width: double.infinity,
        height: 50.h, // Using .h here keeps your scaling consistent
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 3, 80, 162),
            borderRadius: BorderRadius.circular(8.r),
          ),

          child: MaterialButton(
            onPressed: () {
              if (_currentPage < _totalPages - 1) {
                // Move to the next page programmatically
                widget.introKey.currentState?.animateScroll(_currentPage + 1);
              } else {
                _onIntroEnd(context);
              }
            },
            child: Text(
              buttonText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      pages: [
        PageViewModel(
          title: 'Welcome to Marketi',
          body:
              'Discover a world of endless possibilities and shop from the comfort of your fingertips. Browse through a wide range of products, from fashion and electronics to home.',
          image: Image.asset('assets/Illustration_Onboarding_1.png'),
        ),
        PageViewModel(
          title: 'Easy to Buy',
          body:
              'Find the perfect item that suits your style and needs. With secure payment options and fast delivery, shopping has never been easier.',
          image: Image.asset('assets/Illustration_Onboarding_2.png'),
        ),
        PageViewModel(
          title: 'Wonderful User Experience',
          body:
              'Start exploring now and experience the convenience of online shopping at its best.',
          image: Image.asset('assets/Illustration_Onboarding_3.png'),
        ),
      ],
      onDone: () => _onIntroEnd(context),
      showSkipButton: false,
      showDoneButton: false,
      showNextButton: false,
    );
  }
}
