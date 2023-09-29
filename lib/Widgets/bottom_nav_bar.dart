import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
   int _currentIndex = 0;
  final List<Widget> _pages = [
    Placeholder(),
     Placeholder(),
      Placeholder(),
      //HomePage
    // CartPage(),
    // AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}