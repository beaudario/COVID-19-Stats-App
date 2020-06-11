import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: Colors.blue,
      backgroundColor: Colors.grey[50],
      buttonBackgroundColor: Colors.blue,
      height: 55,
      index: 1,
      items: <Widget>[
        Icon(Icons.person, color: Colors.white),
        Icon(Icons.home, color: Colors.white),
        Icon(Icons.favorite, color: Colors.white),
      ],
      animationDuration: Duration(
          milliseconds: 200
      ),
    );
  }
}