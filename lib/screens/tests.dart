import "package:flutter/material.dart";

class TestsScreen extends StatefulWidget {
  const TestsScreen({super.key});

  @override
  State<TestsScreen> createState() => _TestsScreenState();
}

class _TestsScreenState extends State<TestsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PsyMetrica'),
        backgroundColor: Theme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        onTap: (int idx) {
          if (idx == 0) {
            Navigator.pushNamed(context, "/");
          } else if (idx == 1) {
            Navigator.pushNamed(context, "/tests");
          } else {
            Navigator.pushNamed(context, "/welcome");
          }
        },
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
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.format_list_bulleted_rounded,
                  color: Theme.of(context).primaryColor,
                ),
                Text(
                  "Фильтр",
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
