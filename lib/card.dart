import 'package:flutter/material.dart';

class InputCard extends StatelessWidget {
  InputCard({@required this.cardColor});

  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
