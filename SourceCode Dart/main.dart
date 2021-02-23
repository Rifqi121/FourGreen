import 'package:flutter/material.dart';
import 'package:fourgreen/components/toggle_switch.dart';
import 'package:fourgreen/contstant.dart';
import 'package:fourgreen/welcome/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fourgreen',
      theme: ThemeData( 
        primaryColor: Colors.green,
        scaffoldBackgroundColor: Colors.green,
        ),
      home: SplashScreen(),
    );
  }
}

