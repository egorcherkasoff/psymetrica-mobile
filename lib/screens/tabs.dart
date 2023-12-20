import 'package:flutter/material.dart';
import 'package:psymetrica/screens/home.dart';
import 'package:psymetrica/screens/register.dart';
import 'package:psymetrica/screens/tests.dart';
import 'package:psymetrica/screens/welcome.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _currentIndex = 0;

  void _changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeTab = const HomeScreen();

    if (_currentIndex == 0) {
      activeTab = const HomeScreen();
    } else if (_currentIndex == 1) {
      activeTab = const TestsScreen();
    } else {
      activeTab = const Welcome();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Главная'),
        backgroundColor: Theme.of(context).primaryColor,
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _changePage,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Главная",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Тесты",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Профиль",
          ),
        ],
      ),
      body: activeTab,
    );
  }
}
