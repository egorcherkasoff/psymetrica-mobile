import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psymetrica/screens/test.dart';
import 'package:psymetrica/models/notification.dart' as nfc;

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key, required this.notification});

  final nfc.Notification notification;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0).copyWith(top: 0),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xffF6F8F9),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xffD5DCE2), width: .5),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(CupertinoIcons.info_circle, color: Colors.black87),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Text(
                    notification.title,
                    style: Theme.of(context).textTheme.bodyMedium,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              notification.description,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
      ),
    );
  }
}
