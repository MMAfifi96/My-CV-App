import 'package:flutter/material.dart';
import 'package:my_cv/screens/Experience/experienceScreen.dart';
import 'package:my_cv/screens/PersonalInfo/personalInfoScreen.dart';
import 'package:my_cv/screens/Skills/skillsScreen.dart';
import 'package:my_cv/screens/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //to remove the debug banner in the top right corner
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home:  SplashScreen(),
    );
  }
}
