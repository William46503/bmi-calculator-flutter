import 'package:flutter/material.dart';

class InputCard extends StatelessWidget {
  InputCard({@required this.cardColor, this.child});

  final Color cardColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
