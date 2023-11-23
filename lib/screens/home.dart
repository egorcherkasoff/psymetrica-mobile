import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PsyMetrica'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0.0),
          children: [
            DrawerHeader(
              padding: const EdgeInsets.all(0.0),
              margin: const EdgeInsets.all(0.0),
              decoration: const BoxDecoration(
                color: Color(0xFF1095c0),
              ),
              child: Center(
                child: Column(
                  children: [
                    const Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 120.0,
                    ),
                    Text(
                      "Ivan Ivanov",
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    Text(
                      "@ivan2014",
                      style: Theme.of(context).textTheme.displaySmall,
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/welcome');
              },
              title: Row(
                children: [
                  const Icon(
                    Icons.home,
                    color: Colors.grey,
                    size: 32.0,
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Text("Главная",
                      style: Theme.of(context).textTheme.displayMedium)
                ],
              ),
            ),
            ListTile(
              onTap: () {},
              title: Row(
                children: [
                  const Icon(
                    Icons.draw,
                    color: Colors.grey,
                    size: 32.0,
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Text("Мои тесты",
                      style: Theme.of(context).textTheme.displayMedium)
                ],
              ),
            ),
            ListTile(
              onTap: () {},
              title: Row(
                children: [
                  const Icon(
                    Icons.settings,
                    color: Colors.grey,
                    size: 32.0,
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Text("Профиль",
                      style: Theme.of(context).textTheme.displayMedium)
                ],
              ),
            ),
          ],
        ),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
          child: Column(
            children: [
              Card(
                child: Container(
                  padding:
                      const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Text(
                              "С возвращением!",
                              style: Theme.of(context).textTheme.displayLarge,
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "Вы начали проходить тест 'название теста'. Хотите продолжить?",
                              style: Theme.of(context).textTheme.displayMedium,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 8.0),
                        child: LinearPercentIndicator(
                          padding: const EdgeInsets.only(left: 0.0, right: 8.0),
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
                      Container(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "> Перейти",
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin:
                    const EdgeInsets.symmetric(horizontal: 4.0, vertical: 12.0),
                child: Text(
                  "Последняя активность",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
