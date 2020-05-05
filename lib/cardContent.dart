import 'package:flutter/material.dart';

TextStyle labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class CardContent extends StatelessWidget {
  CardContent({@required this.text, @required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: labelTextStyle,
        ),
      ],
    );
  }
}