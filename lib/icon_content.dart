import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
fontSize: 18.0,
color: Color(0xFF8C8D97)
);

class IconContent extends StatelessWidget {
  final String gender;
  final IconData iconData;


  IconContent(this.gender, this.iconData);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gender,
          style: labelTextStyle,
          ),
      ],
    );
  }
}