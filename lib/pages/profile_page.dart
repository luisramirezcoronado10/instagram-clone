import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:instagram/widgets/numbers_profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            navbar(),
            dataProfile(),
          ],
        ),
      ),
    );
  }

  Widget navbar() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(FeatherIcons.lock, size: 14),
              SizedBox(width: 8),
              Text(
                'luisg.ramirezcoronado',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(width: 8),
              Icon(FeatherIcons.chevronDown, size: 14),
            ],
          ),
          Icon(FeatherIcons.plusSquare),
          Icon(FeatherIcons.menu),
        ],
      ),
    );
  }

  Widget dataProfile() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 42,
            backgroundImage: AssetImage('assets/images/avatars/avatar_1.png'),
          ),
          NumbersProfile(number: '27', typeData: 'Publicaciones'),
          NumbersProfile(number: '507', typeData: 'Seguidores'),
          NumbersProfile(number: '1,116', typeData: 'Seguidos'),
        ],
      ),
    );
  }

  Widget descriptionProfile() {}
}
