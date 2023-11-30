import 'package:flutter/material.dart';

class TestCard extends StatelessWidget {
  const TestCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(
                "Тест на дисперсию..",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              subtitle: Text(
                "Здесь идет описание теста....",
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            InkWell(
              onTap: () {},
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
                  "Начать",
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
