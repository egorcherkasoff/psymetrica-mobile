import 'package:flutter/material.dart';
import 'package:psymetrica/screens/tabs.dart';
import 'package:psymetrica/services/auth_service.dart';

/// экран аутентификации
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthService _authService = AuthService();
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    if (_formKey.currentState!.validate()) {
      _authService.login(_emailController.text, _passwordController.text);
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const TabsScreen();
          },
        ),
        (route) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 7),
          padding: const EdgeInsets.all(8.0),
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
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            controller: _emailController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Обязательное поле";
              }
              if (!RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(value)) {
                return "Введите корректный email";
              }
              return null;
            },
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
            controller: _passwordController,
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 6) {
                return "Обязательное поле";
              }
              return null;
            },
            obscureText: true,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              hintText: "Введите ваш пароль",
            ),
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
              onPressed: _login,
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
