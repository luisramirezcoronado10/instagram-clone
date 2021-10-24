import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Post extends StatelessWidget {
  final AssetImage imageAvatar;
  final String nameCount;
  final AssetImage imagePost;
  final String countLikes;

  const Post(
      {Key key,
      this.imageAvatar,
      this.nameCount,
      this.imagePost,
      this.countLikes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        navBar(),
        images(),
        actions(),
        infolikes(),
      ],
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
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black45,
                    radius: 15,
                    // backgroundImage:
                    //     AssetImage('assets/images/avatar_post_1.jpg'),
                    backgroundImage: imageAvatar,
                  ),
                  SizedBox(width: 10),
                  Text(
                    // 'andheuris',
                    '$nameCount',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                icon: Icon(FeatherIcons.moreVertical),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget images() {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: imagePost,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget actions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Row(
              children: [
                IconButton(icon: Icon(FeatherIcons.heart)),
                IconButton(icon: Icon(FeatherIcons.messageCircle)),
                IconButton(icon: Icon(FeatherIcons.send)),
              ],
            ),
          ],
        ),
        Column(
          children: [
            IconButton(icon: Icon(FeatherIcons.bookmark)),
          ],
        ),
      ],
    );
  }

  Widget infolikes() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Text(
        // '1,530 Me gusta',
        '$countLikes Me gusta',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
    );
  }
}
