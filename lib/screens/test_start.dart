import 'package:flutter/material.dart';

class TestStart extends StatelessWidget {
  const TestStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PsyMetrica"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 150.0, horizontal: 20.0),
          child: Card(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Тест на апатию",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  Text(
                    "Здесь лидет описание теста... Не особо длинное, но для примера подойдет вполне себе.",
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).primaryColor,
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Начать",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
