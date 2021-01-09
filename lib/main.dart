import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0A0F0B),
        scaffoldBackgroundColor: Color(0xff0A0F0B),
        primaryTextTheme: TextTheme(
            bodyText1: TextStyle(
          color: Color(0xffA0C500),
        )),
      ),
      home: InputPage(),
    );
  }
}
