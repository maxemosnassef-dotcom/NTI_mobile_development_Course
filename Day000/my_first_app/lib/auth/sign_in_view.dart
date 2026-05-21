import 'package:flutter/material.dart';
import 'package:my_first_app/Buttons/Custom_Button_small.dart';
import 'package:my_first_app/first_Page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInView extends StatefulWidget {
  static String routeName = '/sign_in_view';
  var isChecked = false;

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            minimum: EdgeInsets.only(top: 40.h, right: 15.w, left: 15.w),
            child: Column(
              children: [
                SmallButton(),
                SizedBox(height: 30.h),
                Center(
                  child: Container(
                    height: 400.h,

                    child: Image.asset("assets/logo2.png"),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 32
                          .r, // 1. Constrain width to remove the remaining empty tap gap
                      child: Checkbox.adaptive(
                        activeColor: Colors.blue,
                        visualDensity: VisualDensity
                            .compact, // 2. Shrinks the internal material padding
                        materialTapTargetSize: MaterialTapTargetSize
                            .shrinkWrap, // 3. Removes the default 48x48 target restriction
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.r)),
                        ),
                        value: widget.isChecked,
                        onChanged: (value) {
                          setState(() {
                            widget.isChecked = value!;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 4.r,
                    ), // 4. Explicitly control your spacing here
                    const Text(
                      'Remember Me',
                      style: TextStyle(
                        color: Color(0xFF51526B),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
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
    );
  }
}
