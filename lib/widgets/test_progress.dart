import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class TestProgress extends StatelessWidget {
  const TestProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          title: LinearPercentIndicator(
            animation: true,
            animationDuration: 800,
            leading: Text(
              "Ваш прогресс: ",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 14),
            ),
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            lineHeight: 10.0,
            backgroundColor: Colors.black26,
            trailing: Text(
              "10/12",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 14),
            ),
            percent: 0.8,
            barRadius: const Radius.circular(3),
            progressColor: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
