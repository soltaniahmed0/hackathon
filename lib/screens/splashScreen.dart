import 'dart:async';

import 'package:flutter/material.dart'; // Imported Material.dart instead of Cupertino.dart
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/screens/home/home.dart';
import 'package:untitled/screens/homePage.dart';
import 'package:untitled/screens/tabbar/tabbar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3), // Set the duration for the splash screen
          () => Navigator.of(context).pushReplacement(
        // Navigate to the home screen after the duration
        MaterialPageRoute(builder: (context) => const FRTabbarScreen()),
      ),
    );
  }

  startTimer() {
    Timer(const Duration(seconds: 5), () async {
       Navigator.push(context, MaterialPageRoute(builder: (c)=>HomeScreen(title: "")));
      // Uncomment the above line when AuthPage is defined and imported
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/img.png',
              fit: BoxFit.cover,
            ),
          ),

        ],
      ),
    );
  }
}
