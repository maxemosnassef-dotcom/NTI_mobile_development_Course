import 'package:flutter/material.dart';
import 'package:marketi_nti/my_app.dart';
import 'package:dio/dio.dart';

void main() async {
  final dio = Dio();
  final response = await dio.get('https://dummyjson.com/products');
  print(response.data);

  runApp(const MarktiNtiApp());
}
