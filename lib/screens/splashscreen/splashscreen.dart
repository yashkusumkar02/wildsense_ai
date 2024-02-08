import 'dart:async';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Start a timer
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/onboarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Background Image
            Positioned.fill(
              child: Image.asset(
                'assets/images/backgroundimage.png',
                fit: BoxFit.cover,
              ),
            ),
            // Centered Content
            Column(
              mainAxisAlignment:
              MainAxisAlignment.end, // Align content at the bottom
              children: [
                // Logo Image
                Image.asset(
                  'assets/images/logo.png',
                  width: 200, // Adjust size as needed
                  height: 200, // Adjust size as needed
                ),// Spacer
                // App Name
                const Text(
                  'Wild-Sense',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontFamily: 'SF Pro',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  'The Incredible Journey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'SF Pro',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                const SizedBox(height: 30), // Spacer
                // Progress Indicator
                 Center(
                  child: LoadingAnimationWidget.prograssiveDots(color: Colors.white, size: 30),
                ),
                const SizedBox(height: 50), // Add extra space if needed
              ],
            ),
          ],
        ),
      ),
    );
  }
}
