import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              // color: Colors.black,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/reels/reel_1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            navBar(),
            information(),
            actions(),
          ],
        ),
      ),
    );
  }

  Widget navBar() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Reels',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(FeatherIcons.camera, color: Colors.white),
        ],
      ),
    );
  }

  Widget information() {
    return Positioned(
      bottom: 30,
      left: 12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/avatars/avatar_1.png'),
              ),
              SizedBox(width: 10),
              Text(
                'tonystark - Seguir',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Text(
            '24 Hrs en la Paz, lets go... más',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(
                FeatherIcons.activity,
                color: Colors.white,
                size: 12,
              ),
              SizedBox(width: 10),
              Text(
                'rzr_corridos - Audio original',
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget actions() {
    return Positioned(
      bottom: 30,
      right: 12,
      child: Column(
        children: [
          // more
          Icon(FeatherIcons.moreHorizontal, color: Colors.white),

          SizedBox(height: 24),
          // like
          Column(
            children: [
              Icon(
                FeatherIcons.heart,
                color: Colors.white,
                size: 28,
              ),
              SizedBox(height: 5),
              Text(
                '16.9 mil',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ),

          SizedBox(height: 24),
          //comment
          Column(
            children: [
              Icon(
                FeatherIcons.messageCircle,
                color: Colors.white,
                size: 28,
              ),
              SizedBox(height: 5),
              Text(
                '70',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ),

          SizedBox(height: 24),
          // send
          Icon(
            FeatherIcons.send,
            color: Colors.white,
            size: 28,
          ),

          SizedBox(height: 24),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage('assets/images/posts/post_3.png'),
                fit: BoxFit.cover,
              ),
              border: Border.all(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
