import 'package:flutter/material.dart';
import 'package:psymetrica/screens/test.dart';
import 'package:psymetrica/models/notification.dart' as nfc;

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key, required this.notification});

  final nfc.Notification notification;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black12, width: 1),
            borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          leading: notification.icon,
          title: Text(
            notification.title,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: 18, color: Colors.black),
          ),
          subtitle: Text(
            notification.description,
            style:
                Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 16),
          ),
          trailing: IconButton(
            padding: EdgeInsets.zero,
            iconSize: 36,
            splashColor: Theme.of(context).primaryColor,
            icon: const Icon(
              Icons.chevron_right_rounded,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const TestScreen();
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
