import 'package:flutter/material.dart';

class TextWithIcon extends StatelessWidget {
  final Icon icon;
  final Text text;

  TextWithIcon({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        Padding(
          padding: EdgeInsets.all(3),
        ),
        text
      ],
    );
  }
}
