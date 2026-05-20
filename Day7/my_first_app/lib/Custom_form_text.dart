import 'package:flutter/material.dart';

class CustomSign extends StatelessWidget {
  final String hint;
  final String error;
  final Icon icon;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const CustomSign({
    required super.key,
    required this.hint,
    required this.error,
    required this.icon,
    required this.controller,
    required this.validator,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(right: 25, left: 25),

      child: TextFormField(
        style: TextStyle(color: Colors.white),
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.white),
          prefixIcon: icon,
          prefixIconColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
        validator: validator,
      ),
    );
  }
}
