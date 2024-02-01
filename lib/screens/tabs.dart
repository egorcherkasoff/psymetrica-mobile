import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psymetrica/screens/home.dart';
import 'package:psymetrica/screens/profile.dart';
import 'package:psymetrica/screens/tests.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _currentIndex = 0;

  void _changeScreen(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeTab = const HomeScreen();
    String title = "Главная";

    if (_currentIndex == 0) {
      activeTab = const HomeScreen();
      title = "Главная";
    } else if (_currentIndex == 1) {
      activeTab = const TestsScreen();
      title = "Тесты";
    } else {
      activeTab = const ProfileScreen();
      title = "Профиль";
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _changeScreen,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: "Главная",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.book),
            label: "Тесты",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: "Профиль",
          ),
        ],
      ),
      body: activeTab,
    );
  }
}
