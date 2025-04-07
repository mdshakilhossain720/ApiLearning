import 'dart:async';

import 'package:apipratices/views/auth/login_screen.dart';
import 'package:flutter/material.dart';

import '../utils/global_function.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    //   ApGlobalFunctions.changeStatusBarColor(
    //   color: Colors.white, 
    //   iconBrightness: Brightness.dark,
    // );
   
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>LoginScreen()),
      );
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Splash Screen'),
      ),
    );
  }
}
