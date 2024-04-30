import 'package:flutter/material.dart';
import 'package:untitled/routes.dart';
import 'package:untitled/screens/splashScreen.dart';
import 'package:untitled/theme.dart';
import 'package:untitled/size_config.dart'; // Import your SizeConfig class

void main() {
  runApp(const FreshBuyerApp());
}

class FreshBuyerApp extends StatelessWidget {
  const FreshBuyerApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Initialize SizeConfig before building the app
    SizeConfig().init(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fresh-Buyer',
      theme: appTheme(),
      routes: routes,
      home: SplashScreen(),
    );
  }
}