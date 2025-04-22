import 'package:captchadekho/Login/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF8664E7)),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF8664E7), // AppBar background
          foregroundColor: Colors.white, // Text and icons color
          elevation: 0, // Optional: no shadow
        ),
      ),

      home: Login(),
    );
  }
}
