import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:autiva/core/constans/constansappvalues.dart';
import 'package:autiva/view/screens/langscreen/chooselangscreen.dart';

import 'package:flutter/material.dart';

import '../authscreen/login/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedSplashScreen(
      splashIconSize: 2000,
      backgroundColor: AppConstans.Whitecolor,
      duration: 2000,
      splash: Image.asset(
        AppConstans.logolight,
      ),
      nextScreen: chooselangscreen(),
      splashTransition: SplashTransition.slideTransition,
      centered: true,
    ));
  }
}
