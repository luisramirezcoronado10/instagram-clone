import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:instagram/widgets/numbers_profile.dart';
import 'package:instagram/widgets/storie.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            navbar(),
            dataProfile(),
            descriptionProfile(),
            bottomEditPerfil(),
            myStories(),
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

  Widget descriptionProfile() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Luis G. Ramirez Coronado',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text('Enginner and Entrepreneur'),
          Text('UI Designer my work @luisramirezdesign'),
        ],
      ),
    );
  }

  Widget bottomEditPerfil() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Row(
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 105, right: 105, top: 8, bottom: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey[350]),
            ),
            child: Text(
              'Editar perfil',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 10),
          Container(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey[350]),
            ),
            child: Icon(FeatherIcons.chevronDown, size: 16),
          ),
        ],
      ),
    );
  }

  Widget myStories() {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Storie(
            nameAvatar: 'Madrid',
            imageAvatar: AssetImage('assets/images/avatars/avatar_1.png'),
            colorMain: Colors.grey[350],
          ),
          SizedBox(width: 20),
          Storie(
            nameAvatar: 'Madrid',
            imageAvatar: AssetImage('assets/images/avatars/avatar_1.png'),
            colorMain: Colors.grey[350],
          ),
          SizedBox(width: 20),
          Storie(
            nameAvatar: 'Madrid',
            imageAvatar: AssetImage('assets/images/avatars/avatar_1.png'),
            colorMain: Colors.grey[350],
          ),
          SizedBox(width: 20),
          Storie(
            nameAvatar: 'Madrid',
            imageAvatar: AssetImage('assets/images/avatars/avatar_1.png'),
            colorMain: Colors.grey[350],
          ),
          SizedBox(width: 20),
          Storie(
            nameAvatar: 'Madrid',
            imageAvatar: AssetImage('assets/images/avatars/avatar_1.png'),
            colorMain: Colors.grey[350],
          ),
          SizedBox(width: 20),
          Storie(
            nameAvatar: 'Madrid',
            imageAvatar: AssetImage('assets/images/avatars/avatar_1.png'),
            colorMain: Colors.grey[350],
          ),
        ],
      ),
    );
  }
}
