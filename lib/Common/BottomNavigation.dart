import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sqflites/Screens/Home/Main_Screen.dart';

import 'package:sqflites/Screens/Store/Store_Screen.dart';

import '../Screens/Store/Nested.dart';

class CommonBottomnavigation extends StatefulWidget {
  @override
  _CommonBottomnavigationState createState() => _CommonBottomnavigationState();
}

class _CommonBottomnavigationState extends State<CommonBottomnavigation> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static List<Widget> _widgetOptions = [
    MainScreen(),
    StoreScreen(),
    MyNestedScrollView(),
    MainScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: NavigationBar(
          height: 60,
          elevation: 0,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'User'),
          ],
          selectedIndex: _selectedIndex,
          onDestinationSelected: _onItemTapped,
        ));
  }
}
