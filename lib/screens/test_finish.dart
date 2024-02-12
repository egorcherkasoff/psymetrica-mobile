import 'package:flutter/material.dart';

/// экран, отображающийся после завершения прохождения теста
class TestFinish extends StatelessWidget {
  const TestFinish({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Тест завершён",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Ваши ответы записаны",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 18,
              ),
              _finishButton(context),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _finishButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        style: Theme.of(context).elevatedButtonTheme.style,
        child: const Text(
          "На главный экран",
        ),
      ),
    );
  }
}
