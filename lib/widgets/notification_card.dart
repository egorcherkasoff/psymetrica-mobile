import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:psymetrica/screens/test.dart';

class NotificationCard extends StatefulWidget {
  const NotificationCard({
    super.key,
  });

  @override
  State<NotificationCard> createState() => NotificationCardState();
}

class NotificationCardState extends State<NotificationCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Card(
        elevation: 3,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(
                "Вы не закончили тест \"Определи свой психотип\"",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              subtitle: LinearPercentIndicator(
                leading: Text(
                  "Ваш прогресс: ",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                lineHeight: 10.0,
                backgroundColor: Colors.black26,
                trailing: Text(
                  "10/12",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                percent: 0.8,
                barRadius: const Radius.circular(3),
                progressColor: Theme.of(context).primaryColor,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const TestScreen();
                    },
                  ),
                );
              },
              splashColor: Theme.of(context).primaryColor,
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                height: 48.0,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.black12),
                  ),
                ),
                child: Text(
                  "Продолжить",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
