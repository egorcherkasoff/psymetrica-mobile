import 'package:flutter/material.dart';
import 'package:psymetrica/screens/tabs.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 7),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black12, width: 1),
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Вход в приложение",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 8,
              ),
              _loginForm(context),
            ],
          ),
        ),
      ),
    );
  }

  Form _loginForm(BuildContext context) {
    return Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: "Введите ваш email",
            ),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            obscureText: true,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(hintText: "Введите ваш пароль"),
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 16,
                ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const TabsScreen();
                    },
                  ),
                  (route) => false,
                );
              },
              style: Theme.of(context).elevatedButtonTheme.style,
              child: const Text(
                "Войти",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
