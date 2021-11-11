import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:instagram/pages/home_page.dart';
import 'package:instagram/pages/profile_page.dart';
import 'package:instagram/pages/reels_page.dart';
import 'package:instagram/pages/search_page.dart';
import 'package:instagram/pages/store_page.dart';

class RunPage extends StatefulWidget {
  const RunPage({Key key}) : super(key: key);

  @override
  _RunPageState createState() => _RunPageState();
}

class _RunPageState extends State<RunPage> {
  int _selectedIndex = 0;
  int _icons = 5;
  List<Widget> _pages = [
    HomePage(),
    SearchPage(),
    ReelsPage(),
    StorePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Row(
        children: [
          customBottomNavigationItem(FeatherIcons.home, 0),
          customBottomNavigationItem(FeatherIcons.search, 1),
          customBottomNavigationItem(FeatherIcons.youtube, 2),
          customBottomNavigationItem(FeatherIcons.shoppingBag, 3),
          customBottomNavigationItemPerfil(4)
        ],
      ),
    );
  }

  Widget customBottomNavigationItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 57,
        width: MediaQuery.of(context).size.width / _icons,
        child: Icon(
          icon,
          color: index == _selectedIndex ? Colors.black : Colors.grey[500],
        ),
      ),
    );
  }

  Widget customBottomNavigationItemPerfil(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width / _icons,
        child: CircleAvatar(
          backgroundColor:
              index == _selectedIndex ? Colors.black : Colors.white,
          radius: 14,
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/avatars/avatar_1.png'),
            radius: 12,
          ),
        ),
      ),
    );
  }
}
