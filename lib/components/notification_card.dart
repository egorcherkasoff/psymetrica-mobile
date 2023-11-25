import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

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
        child: Column(
          children: [
            ListTile(
              title: Text("Вы не закончили тест \"Определи свой психотип\""),
              subtitle: Container(
                child: LinearPercentIndicator(
                  leading: Text("Ваш прогресс: "),
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
            ),
            InkWell(
              onTap: () {},
              splashColor: Theme.of(context).primaryColor,
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                height: 48.0,
                child: Text("Продолжить"),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.black12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
