import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({
    Key key,
  }) : super(key: key);

  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _page = 1;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: Colors.blue,
      backgroundColor: Colors.grey[50],
      buttonBackgroundColor: Colors.blue,
      height: 55,
      key: _bottomNavigationKey,
      index: 1,
      items: <Widget>[
        Icon(Icons.person, color: Colors.white),
        Icon(Icons.home, color: Colors.white),
        Icon(Icons.favorite, color: Colors.white),
      ],
      animationDuration: Duration(
          milliseconds: 200
      ),
      onTap: (index) {
        setState(() {
          _page = index;
        });
      },
    );
  }
}