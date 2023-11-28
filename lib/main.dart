import 'package:flutter/material.dart';
import 'package:psymetrica/screens/home.dart';
import 'package:psymetrica/screens/register.dart';
import 'package:psymetrica/screens/tests.dart';
import 'package:psymetrica/screens/welcome.dart';
import 'package:psymetrica/screens/test_start.dart';
import 'package:psymetrica/screens/register_confirm.dart';
import 'package:psymetrica/screens/test.dart';
import 'package:psymetrica/theme.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      initialRoute: "/",
      routes: {
        '/': (context) => (Home()),
        '/welcome': (context) => (Welcome()),
        '/register': (context) => (Register()),
        '/register/confirm': (context) => (RegisterConfirm()),
        '/tests/start': (context) => (TestStart()),
        '/tests': (context) => (TestsScreen()),
        '/test': (context) => (TestScreen()),
      },
    );
  }
}
