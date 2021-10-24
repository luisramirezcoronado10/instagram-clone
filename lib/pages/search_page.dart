import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(
            children: [
              search(),
              grid(),
            ],
          ),
        ),
      ),
    );
  }

  Widget search() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Container(
        height: 55,
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Buscar',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white),
            ),

            // color interno del input text
            fillColor: Colors.grey[250],
            filled: true,

            // icono dento del input
            prefixIcon: Icon(
              FeatherIcons.search,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Widget grid() {
    return Container(
      margin: const EdgeInsetsDirectional.only(top: 80),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
        ),
        children: [
          images(),
          images(),
          images(),
          images(),
          images(),
          images(),
          images(),
          images(),
          images(),
          images(),
          images(),
          images(),
          images(),
          images(),
          images(),
          images(),
          images(),
          images(),
          images(),
          images(),
          images(),
        ],
      ),
    );
  }

  Widget images() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/post_1.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
