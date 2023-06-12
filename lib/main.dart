import 'package:flutter/material.dart';
import 'package:login_ui/splash_screen.dart';
import 'package:login_ui/utils/colors.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login',
      theme: ThemeData(
        primaryColor: orangeColor,
      ),
      home: const SpashScreen(),
    );
  }
}
