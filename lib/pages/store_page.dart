import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:instagram/widgets/filter.dart';
import 'package:instagram/widgets/image_result.dart';

class StorePage extends StatelessWidget {
  const StorePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              navBar(),
              search(),
              filters(),
              grid(),
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
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Container(
        height: 50,
        child: TextField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(0),
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
      height: 35,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Filter(title: 'Tiendas'),
          SizedBox(width: 5),
          Filter(title: 'Videos'),
          SizedBox(width: 5),
          Filter(title: 'Sugerencias de editores'),
          SizedBox(width: 5),
          Filter(title: 'Colecciones'),
          SizedBox(width: 5),
          Filter(title: 'Guias'),
        ],
      ),
    );
  }

  Widget grid() {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(top: 12),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
          ),
          children: [
            ImageResult(
              imageResult: AssetImage(
                  'assets/images/images_results/image_result_22.png'),
            ),
            ImageResult(
              imageResult: AssetImage(
                  'assets/images/images_results/image_result_23.png'),
            ),
            ImageResult(
              imageResult: AssetImage(
                  'assets/images/images_results/image_result_24.png'),
            ),
            ImageResult(
              imageResult: AssetImage(
                  'assets/images/images_results/image_result_25.png'),
            ),
            ImageResult(
              imageResult: AssetImage(
                  'assets/images/images_results/image_result_26.png'),
            ),
            ImageResult(
              imageResult: AssetImage(
                  'assets/images/images_results/image_result_27.png'),
            ),
            ImageResult(
              imageResult: AssetImage(
                  'assets/images/images_results/image_result_28.png'),
            ),
            ImageResult(
              imageResult: AssetImage(
                  'assets/images/images_results/image_result_29.png'),
            ),
          ],
        ),
      ),
    );
  }
}
