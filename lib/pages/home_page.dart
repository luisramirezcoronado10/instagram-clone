import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:instagram/widgets/post.dart';
import 'package:instagram/widgets/storie.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          // padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              navBar(),
              SizedBox(height: 6),
              stories(),
              posts(),
            ],
          ),
        ),
      ),
    );
  }

  Widget navBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.asset(
                'assets/images/instagram-logo.png',
                height: 60,
              )
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  IconButton(icon: Icon(FeatherIcons.plusSquare)),
                  IconButton(icon: Icon(FeatherIcons.heart)),
                  IconButton(icon: Icon(FeatherIcons.send)),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget stories() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: 105,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Storie(
            imageAvatar: AssetImage('assets/images/avatars/avatar_1.png'),
            nameAvatar: 'Tu historia',
            colorMain: Colors.purple,
          ),
          SizedBox(width: 15),
          Storie(
            imageAvatar: AssetImage('assets/images/avatars/avatar_2.png'),
            nameAvatar: 'ashtalledo',
            colorMain: Colors.purple,
          ),
          SizedBox(width: 15),
          Storie(
            imageAvatar: AssetImage('assets/images/avatars/avatar_3.png'),
            nameAvatar: 'aluxstoreofi...',
            colorMain: Colors.purple,
          ),
          SizedBox(width: 15),
          Storie(
            imageAvatar: AssetImage('assets/images/avatars/avatar_4.png'),
            nameAvatar: 'perlacamayo',
            colorMain: Colors.purple,
          ),
          SizedBox(width: 15),
          Storie(
            imageAvatar: AssetImage('assets/images/avatars/avatar_5.png'),
            nameAvatar: 'platzi',
            colorMain: Colors.purple,
          ),
        ],
      ),
    );
  }

  Widget posts() {
    return Container(
      height: 496,
      child: ListView(
        children: [
          // stories(),
          Post(
            imageAvatar:
                AssetImage('assets/images/avatars_posts/avatar_post_3.jpg'),
            nameCount: 'ironman',
            imagePost: AssetImage('assets/images/posts/post_1.png'),
            countLikes: '1,345',
          ),
          SizedBox(height: 14),
          Post(
            imageAvatar:
                AssetImage('assets/images/avatars_posts/avatar_post_2.jpg'),
            nameCount: 'aluxstoreoficial',
            imagePost: AssetImage('assets/images/posts/post_2.png'),
            countLikes: '10,000',
          ),
          SizedBox(height: 14),
          Post(
            imageAvatar:
                AssetImage('assets/images/avatars_posts/avatar_post_1.jpg'),
            nameCount: 'andheuris',
            imagePost: AssetImage('assets/images/posts/post_3.png'),
            countLikes: '500',
          ),
          SizedBox(height: 14),
        ],
      ),
    );
  }
}
