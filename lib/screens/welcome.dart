import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PsyMetrica"),
        backgroundColor: Theme.of(context).primaryColor,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "Вход в приложение",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
                Form(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        TextFormField(
                          autocorrect: false,
                          decoration: const InputDecoration(
                              labelText: "Введите ваш логин"),
                        ),
                        TextFormField(
                          autocorrect: false,
                          decoration: const InputDecoration(
                              labelText: "Введите ваш пароль"),
                        ),
                      ],
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
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.black12),
                      ),
                    ),
                    child: Text(
                      "Продолжить",
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
