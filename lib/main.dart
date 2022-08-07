import 'package:flutter/material.dart';
import 'package:payment_method/modules/register/register.dart';
import 'package:payment_method/shared/network/dio.dart';

void main() async {
  await DioHelperPayment.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterScreen(),
    );
  }
}
