import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psymetrica/screens/feed.dart';
import 'package:psymetrica/screens/profile.dart';
import 'package:psymetrica/screens/profile_settings.dart';
import 'package:psymetrica/screens/tests.dart';
import 'package:psymetrica/services/auth_service.dart';

/// скаффолд для вкладок (экранов), который позволяет переключаться между ними
class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  void initState() {
    final AuthService authService = AuthService();
    authService.verify();
    super.initState();
  }

  int _currentIndex = 0;

  void _changeScreen(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeTab = const FeedScreen();
    String title = "Лента";

    if (_currentIndex == 0) {
      activeTab = const FeedScreen();
      title = "Лента";
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
        actions: [
          _currentIndex == 2
              ? IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ProfileSettings(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                )
              : const SizedBox(),
        ],
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
            icon: Icon(CupertinoIcons.news_solid),
            label: "Лента",
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
