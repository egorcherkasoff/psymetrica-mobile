import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:psymetrica/widgets/notification_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Главная'),
        backgroundColor: Theme.of(context).primaryColor,
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: BottomNavigationBar(
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
      body: ListView.builder(
        itemCount: 9,
        itemBuilder: (context, index) {
          return NotificationCard();
        },
      ),
    );
  }
}
