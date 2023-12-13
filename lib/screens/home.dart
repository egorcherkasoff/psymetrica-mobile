import 'package:flutter/material.dart';
import 'package:psymetrica/widgets/notification_card.dart';
import 'package:psymetrica/temp_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tempNotifications.length,
      itemBuilder: (context, index) {
        return NotificationCard(
          notification: tempNotifications[index],
        );
      },
    );
  }
}
