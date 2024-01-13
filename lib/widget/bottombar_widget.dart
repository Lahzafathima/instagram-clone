import 'package:flutter/material.dart';

class BottombarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      iconSize: 35,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined), label: 'add'),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/reel.png',
              width: 30,
            ),
            label: 'reel'),
        BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/images/pic.jpg'),
            ),
            label: 'user')
      ],
    ));
  }
}
