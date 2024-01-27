// main.dart

import 'package:flutter/material.dart';
import 'splash_screen.dart'; //

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // เปลี่ยนจาก HomeScreen เป็น SplashScreen
    );
  }
}
