import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psymetrica/widgets/notification_card.dart';
import 'package:psymetrica/temp_data.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Продолжите проходить тест",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _continueCard(context, "Кто ты из слова пацана"),
                _continueCard(context, "тест на дисперсию"),
                _continueCard(
                  context,
                  "Какой ты моб из майнкрафта по знаку зодиака",
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Уведомления",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          NotificationCard(
            notification: tempNotifications[0],
          ),
          NotificationCard(
            notification: tempNotifications[0],
          ),
        ],
      ),
    );
  }

  Padding _continueCard(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Container(
        width: 160,
        height: 160,
        decoration: BoxDecoration(
          color: const Color(0xffF6F8F9),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xffD5DCE2), width: .5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    text,
                    style: Theme.of(context).textTheme.bodyMedium,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Прогресс: 50/142",
                    style: Theme.of(context).textTheme.labelMedium,
                    softWrap: false,
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(CupertinoIcons.right_chevron),
                    Text("Продолжить"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
