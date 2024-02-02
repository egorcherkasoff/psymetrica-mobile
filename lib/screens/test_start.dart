import 'package:flutter/material.dart';
import 'package:psymetrica/models/test.dart';
import 'package:psymetrica/screens/test.dart';

//экран начала теста
class TestStart extends StatelessWidget {
  const TestStart({Key? key, required this.test}) : super(key: key);

  final Test test;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                test.title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 10,
              ),
              Text("Автор теста: ${test.author.fullName}",
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(
                height: 10,
              ),
              Text(
                test.description,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 10,
              ),
              Text("Тест состоит из ${test.questionsCount} вопросов",
                  style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(
                height: 10,
              ),
              _startButton(context),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _startButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const TestScreen();
              },
            ),
          );
        },
        style: Theme.of(context).elevatedButtonTheme.style,
        child: const Text(
          "Начать",
        ),
      ),
    );
  }
}
