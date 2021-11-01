import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class NewStorie extends StatelessWidget {
  const NewStorie({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 33,
          backgroundColor: Colors.grey[350],
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: Icon(
              FeatherIcons.plus,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 5),
        Text('Nueva'),
      ],
    );
  }
}
