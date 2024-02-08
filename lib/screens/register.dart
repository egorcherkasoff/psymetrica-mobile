import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:psymetrica/screens/offer_details.dart';
import 'package:psymetrica/services/auth_service.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _authService = AuthService();
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _rePasswordController = TextEditingController();

  void _register() {
    if (_formKey.currentState!.validate()) {
      final res = _authService.register(_emailController.text,
          _passwordController.text, _rePasswordController.text);
      log(res.toString());
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const OfferDetailsScreen(),
          ),
          (route) => false);
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
                "Регистрация",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 8,
              ),
              _registerForm(context),
            ],
          ),
        ),
      ),
    );
  }

  Form _registerForm(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(hintText: "Введите ваш email"),
            style: Theme.of(context).textTheme.bodyMedium,
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
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            controller: _passwordController,
            obscureText: true,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              hintText: "Введите ваш пароль",
            ),
            style: Theme.of(context).textTheme.bodyMedium,
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 6) {
                return "Обязательное поле";
              }
              return null;
            },
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            controller: _rePasswordController,
            obscureText: true,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              hintText: "Подтвердите пароль",
            ),
            style: Theme.of(context).textTheme.bodyMedium,
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 6) {
                return "Обязательное поле";
              }
              if (value != _passwordController.text) {
                return "Пароли не совпадают";
              }
              return null;
            },
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _register,
              style: Theme.of(context).elevatedButtonTheme.style,
              child: const Text(
                "Зарегистрироваться",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
