// splash_screen.dart
import 'package:flutter/material.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          // Check if the user swiped to the right
          if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          }
        },
        children: [
          Container(
            color: Colors.orange, // Set the background color for this page
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/img/Foodpad_logo.png', // รูปภาพ logo จาก assets
                  height: 100, // ปรับขนาดตามที่เหมาะสม
                ),
                SizedBox(height: 16),
                Text(
                  'Welcome to FoodPad',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  '...Enjoy your cooking...',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/img/left_splash_img.png', // รูปภาพทางซ้ายจาก assets
                      height: 50, // ปรับขนาดตามที่เหมาะสม
                    ),
                    Image.asset(
                      'assets/img/right_splash_img.png', // รูปภาพทางขวาจาก assets
                      height: 50, // ปรับขนาดตามที่เหมาะสม
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Colors.orange, // Set the background color for this page
            child: Center(
              child: Text(
                '', // ใส่ข้อความว่างเพื่อไม่แสดงข้อความ
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
