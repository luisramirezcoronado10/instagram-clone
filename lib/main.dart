import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:instagram/pages/home_page.dart';
import 'package:instagram/pages/profile_page.dart';
import 'package:instagram/pages/reels_page.dart';
import 'package:instagram/pages/run_page.dart';
import 'package:instagram/pages/search_page.dart';
import 'package:instagram/pages/store_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  List<Widget> pages = [
    HomePage(),
    SearchPage(),
    ReelsPage(),
    StorePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      debugShowCheckedModeBanner: false,
      home: RunPage(),
      // home: Scaffold(
      //   body: HomePage(),
      //   bottomNavigationBar: Row(
      //     children: [
      //       customBottomNavigationItem(),
      //     ],
      //   ),
      // bottomNavigationBar: BottomNavigationBar(
      //   // type: se usa para cuando son más de 3 items
      //   type: BottomNavigationBarType.fixed,
      //   currentIndex: 0,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(FeatherIcons.home),
      //       label: 'home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(FeatherIcons.search),
      //       label: 'search',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(FeatherIcons.video),
      //       label: 'reels',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(FeatherIcons.shoppingBag),
      //       label: 'bag',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(FeatherIcons.user),
      //       label: 'perfil',
      //     ),
      //   ],
      // ),
      //   ),
    );
  }

  Widget customBottomNavigationItem() {
    return Container(
      height: 57,
      color: Colors.amber,
      width: MediaQuery.of(context).size.width,
      // width: 100,
      child: Icon(FeatherIcons.home),
    );
  }
}
