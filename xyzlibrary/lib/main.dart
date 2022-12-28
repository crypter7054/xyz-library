import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:xyzlibrary/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(splash: Image.asset('logo.png'),duration: 3000,
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Colors.white,
      nextScreen: const LoginPage()),
    );
  }
}

