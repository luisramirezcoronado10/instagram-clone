import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  final String title;

  const Filter({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 40,
      // width: 100,
      padding: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        // color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey[350]),
      ),
      child: Center(
        child: Text(
          // 'Tiendas',
          '$title',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
