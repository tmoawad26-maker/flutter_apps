import 'package:flutter/material.dart';
import 'package:flutter_apps/screens/home_screen.dart';
import 'package:flutter_apps/screens/login_screen.dart';
import 'package:flutter_apps/screens/otp_screen.dart';
import 'package:flutter_apps/screens/signup_screen.dart';
import 'package:flutter_apps/screens/splash_screen.dart';
class HelpingApp extends StatelessWidget {
  const HelpingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginScreen.id: (context) => const LoginScreen(),
        SignupScreen.id: (context) => const SignupScreen(),
        OTPScreen.id: (context) => const OTPScreen(),
        HomeScreen.id : (context) => const HomeScreen()
      },
      home: const SplashScreen(),
    );
  }
}