import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xff8d8e98),
);

class ReusableCardContent extends StatelessWidget {
  const ReusableCardContent(
      {super.key, required this.cardIcon, required this.label});

  final IconData cardIcon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            cardIcon,
            size: 50.0,
          ),
          const SizedBox(
            height: 15.0,
          ),
          Text(
            label,
            style: labelTextStyle,
          ),
        ]);
  }
}
