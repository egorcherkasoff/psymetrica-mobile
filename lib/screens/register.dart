import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

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
                    "Регистрация",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Введите ваш email",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Введите пароль",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Подтвердите пароль",
                            border: OutlineInputBorder(),
                          ),
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
                                "Зарегистрироваться",
                                style:
                                    Theme.of(context).textTheme.displayMedium,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Уже зарегистрированы?",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      TextButton(
                        child: const Text("Войдите"),
                        onPressed: () {},
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
