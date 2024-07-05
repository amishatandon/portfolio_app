import 'package:flutter/material.dart';

class NavigatorBar extends StatelessWidget {
  final void Function(int) onTabChanged;
  final int currentIndex;

  const NavigatorBar({
    Key? key,
    required this.onTabChanged,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTabChanged,
      backgroundColor:
          Colors.white, // Background color of the bottom navigation bar
      selectedItemColor:
          Colors.blue, // Color of the selected tab icon and label
      unselectedItemColor:
          Colors.grey, // Color of the unselected tab icons and labels
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'About',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.work),
          label: 'Projects',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail),
          label: 'Contact',
        ),
      ],
    );
  }
}
