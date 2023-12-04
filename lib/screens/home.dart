import 'package:flutter/material.dart';
import 'package:psymetrica/widgets/notification_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 9,
      itemBuilder: (context, index) {
        return const NotificationCard();
      },
    );
  }
}
