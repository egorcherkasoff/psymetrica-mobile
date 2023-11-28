import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class TestProgress extends StatelessWidget {
  const TestProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 3,
        child: ListTile(
          title: LinearPercentIndicator(
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
      ),
    );
  }
}
