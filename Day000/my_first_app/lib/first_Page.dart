import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstPage extends StatefulWidget {
  @override
  static const String routeName = '/firstpage';
  var isChecked = false;

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 150.h),
          Center(child: Text('First Page')),
        ],
      ),
    );
  }
}
