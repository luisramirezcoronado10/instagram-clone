import 'package:flutter/material.dart';

class Storie extends StatelessWidget {
  final String nameAvatar;
  final AssetImage imageAvatar;

  const Storie({Key key, this.nameAvatar, this.imageAvatar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 36,
          backgroundColor: Colors.purple,
          child: CircleAvatar(
            radius: 33,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              // backgroundImage: AssetImage('assets/images/avatar_1.png'),
              backgroundImage: imageAvatar,
              radius: 30,
            ),
          ),
        ),
        SizedBox(height: 5),
        // Text('Tu historia')
        Text(
          '$nameAvatar',
          style: TextStyle(fontSize: 12),
        )
      ],
    );
  }
}
