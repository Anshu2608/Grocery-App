import 'dart:async';
import 'package:flutter/material.dart';
import 'package:grocery/screens/intro_screen.dart';
import 'package:grocery/screens/signIn.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay navigation to HomeScreen
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.asset(
            'assets/images/background_img.png',
            fit: BoxFit.cover,
          ),
          // Logo in center
          Center(
            child: Image.asset(
              'assets/images/logo.png',
              width: 120,  // Adjust as needed
              height: 120, // Adjust as needed
            ),
          ),
        ],
      ),
    );
  }
}
