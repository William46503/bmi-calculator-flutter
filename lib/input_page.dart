// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'card.dart';

const Color inactiveColor = Color(0xFF111428);
const Color activeColor = Color(0xFF111450);
const Color buttomBarColor = Color(0xFF82A102);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int selectedGender;
  Color MaleCardColor = inactiveColor;
  Color FemaleCardColor = inactiveColor;

  //1 = Male, 2= female
  void genderSelect(int genderNum) {
    print("gender selected");
    if (genderNum == 1) {
      if (MaleCardColor == inactiveColor) {
        MaleCardColor = activeColor;
        FemaleCardColor = inactiveColor;
      }
    }
    if (genderNum == 2) {
      if (FemaleCardColor == inactiveColor) {
        FemaleCardColor = activeColor;
        MaleCardColor = inactiveColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          genderSelect(1);
                        });
                      },
                      child: InputCard(
                        cardColor: MaleCardColor,
                        child: IconContent(
                          iconName: FontAwesomeIcons.mars,
                          iconLabel: "MALE",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          genderSelect(2);
                        });
                      },
                      child: InputCard(
                        cardColor: FemaleCardColor,
                        child: IconContent(
                            iconName: FontAwesomeIcons.venus,
                            iconLabel: 'FEMALE'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: InputCard(
              cardColor: activeColor,
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: InputCard(
                      cardColor: activeColor,
                    ),
                  ),
                  Expanded(
                    child: InputCard(
                      cardColor: activeColor,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            color: buttomBarColor,
            height: 50,
            width: double.infinity,
            child: Center(
              child: Text(
                'CALCULATE',
                style: TextStyle(fontSize: 25),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
