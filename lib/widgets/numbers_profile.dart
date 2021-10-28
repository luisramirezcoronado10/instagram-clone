import 'package:flutter/material.dart';

class NumbersProfile extends StatelessWidget {
  final String number;
  final String typeData;

  const NumbersProfile({Key key, this.number, this.typeData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$number',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Text('$typeData'),
      ],
    );
  }
}
