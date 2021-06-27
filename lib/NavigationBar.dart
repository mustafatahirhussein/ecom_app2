import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  int index;

  BottomNavBar(this.index);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      iconSize: 35,
      selectedIconTheme: IconThemeData(color: Colors.deepPurple),
      unselectedIconTheme: IconThemeData(color: Colors.grey),
      currentIndex: widget.index,
      onTap: (i) {
        setState(() {
          widget.index = i;
        });
      },
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Fav'),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart_sharp), label: 'Shop'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
      ],
    );
  }
}
