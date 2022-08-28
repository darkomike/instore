import 'package:flutter/material.dart';
import 'package:kcommerce/constant.dart';
import 'package:kcommerce/screens/landing_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences prefs;
void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'inStore',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Inter',
        
        primaryColor: blue2,
      ),
      home: const LandingPage(),
    );
  }
}
