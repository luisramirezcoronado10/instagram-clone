import 'package:flutter/material.dart';

class ImageResult extends StatelessWidget {
  final AssetImage imageResult;

  const ImageResult({Key key, this.imageResult}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          // image: AssetImage('assets/images/post_1.png'),
          image: imageResult,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
