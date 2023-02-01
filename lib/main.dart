import 'onboarding_activity.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const EntryPoint());
}

class EntryPoint extends StatelessWidget {
  const EntryPoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashActivity(),
      theme: ThemeData(
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Color(0xFFF5F5F5),
        ),
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
      ),
    );
  }
}

class SplashActivity extends StatelessWidget {
  const SplashActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Padding(padding: const EdgeInsets.all(100.0),
        child: Lottie.asset('animations/flutter-loading-indicator.json')),
        duration: 3000,
        splashIconSize: 500.0,
        backgroundColor: const Color(0xFFF5F5F5),
        splashTransition: SplashTransition.fadeTransition,
        nextScreen: const OnBoardingActivity(),
      ),
    );
  }
}
