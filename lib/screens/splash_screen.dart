import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_apps/screens/home_screen.dart';

import '../constants.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static String id = 'splash screen';

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, HomeScreen.id);
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: kPrimaryColor
              )
            ),
            child: Image.asset('assets/splash_screen_image.jpg',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        )
    );
  }
}