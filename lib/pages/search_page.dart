import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:instagram/widgets/image_result.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
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
              borderSide: const BorderSide(color: Colors.white),
            ),

            // color interno del input text
            fillColor: Colors.grey[250],
            filled: true,

            // icono dento del input
            prefixIcon: Icon(
              FeatherIcons.search,
              color: Colors.black,
              size: 16,
            ),
          ),
        ),
      ),
    );
  }

  Widget grid() {
    return Expanded(
      child: Container(
        // margin: const EdgeInsetsDirectional.only(top: 80),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
          ),
          children: [
            ImageResult(
              imageResult:
                  AssetImage('assets/images/images_results/image_result_1.png'),
            ),
            ImageResult(
              imageResult:
                  AssetImage('assets/images/images_results/image_result_2.png'),
            ),
            ImageResult(
              imageResult:
                  AssetImage('assets/images/images_results/image_result_3.png'),
            ),
            ImageResult(
              imageResult:
                  AssetImage('assets/images/images_results/image_result_4.png'),
            ),
            ImageResult(
              imageResult:
                  AssetImage('assets/images/images_results/image_result_5.png'),
            ),
            ImageResult(
              imageResult:
                  AssetImage('assets/images/images_results/image_result_6.png'),
            ),
            ImageResult(
              imageResult:
                  AssetImage('assets/images/images_results/image_result_7.png'),
            ),
            ImageResult(
              imageResult:
                  AssetImage('assets/images/images_results/image_result_8.png'),
            ),
            ImageResult(
              imageResult:
                  AssetImage('assets/images/images_results/image_result_9.png'),
            ),
            ImageResult(
              imageResult: AssetImage(
                  'assets/images/images_results/image_result_10.png'),
            ),
            ImageResult(
              imageResult: AssetImage(
                  'assets/images/images_results/image_result_11.png'),
            ),
            ImageResult(
              imageResult: AssetImage(
                  'assets/images/images_results/image_result_12.png'),
            ),
            ImageResult(
              imageResult: AssetImage(
                  'assets/images/images_results/image_result_13.png'),
            ),
            ImageResult(
              imageResult: AssetImage(
                  'assets/images/images_results/image_result_14.png'),
            ),
            ImageResult(
              imageResult: AssetImage(
                  'assets/images/images_results/image_result_15.png'),
            ),
            ImageResult(
              imageResult: AssetImage(
                  'assets/images/images_results/image_result_16.png'),
            ),
            ImageResult(
              imageResult: AssetImage(
                  'assets/images/images_results/image_result_17.png'),
            ),
            ImageResult(
              imageResult: AssetImage(
                  'assets/images/images_results/image_result_18.png'),
            ),
            ImageResult(
              imageResult: AssetImage(
                  'assets/images/images_results/image_result_19.png'),
            ),
            ImageResult(
              imageResult: AssetImage(
                  'assets/images/images_results/image_result_20.png'),
            ),
            ImageResult(
              imageResult: AssetImage(
                  'assets/images/images_results/image_result_21.png'),
            ),
          ],
        ),
      ),
    );
  }
}
