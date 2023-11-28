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
          padding: const EdgeInsets.all(10.0),
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Название теста",
                        style: Theme.of(context).textTheme.displayLarge,
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text(
                        "Здесь идет описание теста, оно может отсутсвовать, так и нести в себе какой-либо смысл...",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ),
                    const SizedBox(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Тест состоит из N вопросов.",
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/test");
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
                          "Начать",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
