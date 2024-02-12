import 'package:flutter/material.dart';
import 'package:psymetrica/screens/login.dart';
import 'package:psymetrica/screens/register.dart';

/// экран с логотипом и кнопками входа / регистрации (стартовый экран)
class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: _logo(),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _authButtons(context),
            ],
          ),
        ],
      ),
    );
  }

  Image _logo() {
    return Image.asset(
      "assets/logo.png",
      height: 64,
      width: 190,
    );
  }

  Container _authButtons(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black12,
          width: 1,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _loginButton(context),
          _registerButton(context),
        ],
      ),
    );
  }

  SizedBox _registerButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const Register();
              },
            ),
          );
        },
        style: Theme.of(context).outlinedButtonTheme.style,
        child: const Text(
          "Зарегистрироваться",
        ),
      ),
    );
  }

  SizedBox _loginButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const LoginScreen();
              },
            ),
          );
        },
        style: Theme.of(context).elevatedButtonTheme.style,
        child: const Text("Войти"),
      ),
    );
  }
}
