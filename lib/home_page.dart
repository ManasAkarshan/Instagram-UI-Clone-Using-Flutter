import 'package:flutter/material.dart';
import 'package:insta_ui_clone/pages/account.dart';
import 'package:insta_ui_clone/pages/home.dart';
import 'package:insta_ui_clone/pages/reels.dart';
import 'package:insta_ui_clone/pages/search.dart';
import 'package:insta_ui_clone/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Navigate around the bottom nav bar
    int _selectedIndex = 0;
    void navigateBottomNavBar(int index){
      setState(() {
        _selectedIndex = index;
      });
    }

    // Different pages for all tabs
    final List<Widget> children = [
      Home(),
      const Search(),
      const Reels(),
      const Shop(),
      const Account()
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Bottom Nav Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) => navigateBottomNavBar(index),
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'Reels'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
      body: children[_selectedIndex],
    );
  }
}