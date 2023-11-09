import 'package:flutter/material.dart';

class TestScaleCard extends StatelessWidget {
  const TestScaleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Оцените по шкале 1-10 как вы себя чувствуете",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              // здесь вставить rangeslider, переделать виджет в стейтфул
            ],
          ),
        ),
      ),
    );
  }
}
