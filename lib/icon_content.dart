import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double iconSize = 90;
const TextStyle iconLabelStyle = TextStyle(fontSize: 20);

class IconContent extends StatelessWidget {
  IconContent({@required this.iconName, this.iconLabel});

  final IconData iconName;
  final String iconLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconName,
          size: iconSize,
        ),
        SizedBox(height: 20),
        Text(
          iconLabel,
          style: iconLabelStyle,
        )
      ],
    );
  }
}
