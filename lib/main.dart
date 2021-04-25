import 'file:///C:/Users/HOME/AndroidStudioProjects/bmicalculator/lib/Screen/Result_Page.dart';
import 'package:flutter/material.dart';
import 'Screen/Input_page.dart';
void main() {
  runApp(BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home:InputPage(),
    );
  }
}

