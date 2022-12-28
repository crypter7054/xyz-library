import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'Navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[700],
        textTheme: GoogleFonts.interTextTheme(),
        inputDecorationTheme: InputDecorationTheme(
          floatingLabelStyle: TextStyle(
            color: (Colors.green[700])!,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: (Colors.green[700])!
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(splash: Image.asset('logo_white.png'),duration: 3000,
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Colors.white,
      nextScreen: Navigation()),
    );
  }
}

