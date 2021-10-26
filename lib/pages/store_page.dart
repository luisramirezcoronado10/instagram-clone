import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class StorePage extends StatelessWidget {
  const StorePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(
            children: [
              navBar(),
              search(),
              filters(),
            ],
          ),
        ),
      ),
    );
  }

  Widget navBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Tienda',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(FeatherIcons.menu),
        ],
      ),
    );
  }

  Widget search() {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Buscar',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white),
              ),
              fillColor: Colors.grey[250],
              filled: true,
              prefixIcon: Icon(
                FeatherIcons.search,
                color: Colors.black,
              )),
        ),
      ),
    );
  }

  Widget filters() {
    return Container(
      margin: const EdgeInsets.only(top: 130),
      child: Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
          // color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey[350]),
        ),
        child: Center(
          child: Text(
            'Tiendas',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget grid() {}
}
