import 'package:flutter/material.dart';

class M3NavigationBar extends StatefulWidget {
  const M3NavigationBar({super.key});

  @override
  State<M3NavigationBar> createState() => _M3NavigationBarState();
}

class _M3NavigationBarState extends State<M3NavigationBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 100,
      child: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.explore),
            icon: Icon(Icons.explore_outlined),
            label: 'Explore',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.commute),
            icon: Icon(Icons.commute_outlined),
            label: 'Commute',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark_border),
            icon: Icon(Icons.bookmark_border_outlined),
            label: 'Saved',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.palette),
            icon: Icon(Icons.palette_outlined),
            label: 'Palette',
          ),
        ],
      ),
    );
  }
}
