import 'package:flutter/material.dart';
import 'package:task_managment/views/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primaryColor: Color(0xff5F33E1),
        fontFamily: "LexendDeca",
        textTheme: TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
          bodySmall: TextStyle(color: Color(0xff6E6A7C), fontSize: 11),
        ),
      ),
      home: const LoginPage(),
    );
  }
}
