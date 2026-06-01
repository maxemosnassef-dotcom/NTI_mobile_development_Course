// ignore_for_file: must_be_immutable

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_nti/auth/widgets/custom_text_form_field.dart';
import 'package:marketi_nti/auth/widgets/easy_registration.dart';
import 'package:marketi_nti/auth/widgets/main_button.dart';
import 'package:marketi_nti/auth/widgets/text_button.dart';
import 'package:marketi_nti/auth/widgets/skip_button.dart';

class SignInView extends StatefulWidget {
  bool value = false;

  SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  late TextEditingController emailController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 14.h),
                  SkipButton(),
                  SizedBox(height: 7.h),
                  Center(
                    child: Image.asset(
                      'assets/images/Logo_Log_In.png',
                      fit: BoxFit.cover,
                      width: 300.w,
                      height: 250.h,
                    ),
                  ),
                  SizedBox(height: 32.h),

                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        CustomTextFormField(
                          controller: emailController,
                          iconPath: 'assets/icons/evaEmailOutline2.png',
                          hint: 'Username or Email',
                          isEmail: true,
                        ),

                        SizedBox(height: 14.h),

                        CustomTextFormField(
                          controller: passwordController,
                          iconPath: 'assets/icons/Password_Icon.png',
                          hint: 'Password',
                          isPassword: true,
                        ),
                        Row(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Transform.translate(
                                  offset: Offset(7, 0),
                                  child: Checkbox.adaptive(
                                    // visualDensity: VisualDensity(horizontal: -4.w, vertical: -4.h),
                                    // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                    activeColor: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadiusGeometry.all(
                                        Radius.circular(4.r),
                                      ),
                                    ),
                                    value: widget.value,
                                    onChanged: (value) {
                                      widget.value = value!;
                                      setState(() {});
                                    },
                                  ),
                                ),
                                Text(
                                  'Remember Me',
                                  style: TextStyle(
                                    color: const Color(0xFF51526B) /* navy */,
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 1.34,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            textButton(
                              text: 'Forgot Password?',
                              ontap: () {
                                Navigator.pushNamed(
                                  context,
                                  '/forgot_password',
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  MainButton(
                    ontap: () async {
                      if (formKey.currentState!.validate()) {
                        try {
                          Response response = await Dio().post(
                            "https://accessories-eshop.runasp.net/api/auth/login",
                            data: {
                              "email": emailController.text,
                              "password": passwordController.text,
                            },
                          );

                          if (response.statusCode == 200 && context.mounted) {
                            Navigator.pushNamed(context, '/home');
                          }
                        } on DioException catch (e) {
                          if (context.mounted) {
                            String errorMessage = "Something went wrong";

                            // 1. Try to pull the explicit validation error from the API response body
                            if (e.response?.data != null) {
                              final data = e.response!.data;

                              if (data is Map) {
                                if (data.containsKey('errors') &&
                                    data['errors'] != null) {
                                  // Catches standard ASP.NET validation dictionaries {"errors": {"Email": ["...", "..."]}}
                                  final errorsMap = data['errors'];
                                  if (errorsMap is Map &&
                                      errorsMap.isNotEmpty) {
                                    var firstErrorList = errorsMap.values.first;
                                    if (firstErrorList is List &&
                                        firstErrorList.isNotEmpty) {
                                      errorMessage = firstErrorList.first
                                          .toString();
                                    } else {
                                      errorMessage = errorsMap.values.first
                                          .toString();
                                    }
                                  }
                                } else {
                                  // Catches custom messages {"message": "Invalid credentials"}
                                  errorMessage =
                                      data['message'] ??
                                      data['error'] ??
                                      "Something went wrong";
                                }
                              } else if (data is String) {
                                errorMessage = data;
                              }
                            }
                            // 2. Fall back to status codes if response body is empty or null
                            else if (e.response?.statusCode == 401) {
                              errorMessage = "Invalid email or password.";
                            } else if (e.response?.statusCode == 400) {
                              errorMessage =
                                  "Bad request. Please check inputs.";
                            } else if (e.type ==
                                    DioExceptionType.connectionTimeout ||
                                e.type == DioExceptionType.connectionError) {
                              errorMessage =
                                  "Connection error. Check your internet.";
                            }

                            // Clear any active snackbar instantly so new error pops up immediately
                            ScaffoldMessenger.of(context).clearSnackBars();

                            // Show the targeted error
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(errorMessage),
                                backgroundColor: Colors.red,
                                behavior: SnackBarBehavior.floating,
                              ),
                            );
                          }
                        } catch (genericError) {
                          if (context.mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "Application error: $genericError",
                                ),
                              ),
                            );
                          }
                        }
                      }
                    },

                    text: 'Sign In',
                  ),

                  //                 SizedBox(height: 12.h),
                  //                 EasyRegistration(),
                  //                         },
                  //                       );

                  //                       Navigator.pushNamed(context, '/home');
                  //                     }
                  //                   },
                  //                   text: 'Sign In',
                  //                 ),
                  SizedBox(height: 12.h),
                  EasyRegistration(),
                  SizedBox(height: 14.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          color: const Color(0xFF51526B) /* navy */,
                          fontSize: 12.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 1.34,
                        ),
                      ),
                      textButton(
                        text: 'Sign Up',
                        ontap: () {
                          Navigator.pushNamed(context, '/sign_up');
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
