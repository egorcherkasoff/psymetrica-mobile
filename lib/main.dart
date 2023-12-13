import 'package:flutter/material.dart';
import 'package:psymetrica/screens/tabs.dart';
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
      debugShowCheckedModeBanner: false,
      home: const TabsScreen(),
      // initialRoute: "/",
      // routes: {
      //   '/': (context) => (Home()),
      //   '/welcome': (context) => (Welcome()),
      //   '/register': (context) => (Register()),
      //   '/register/confirm': (context) => (RegisterConfirm()),
      //   '/tests/start': (context) => (TestStart()),
      //   '/tests': (context) => (TestsScreen()),
      //   '/test': (context) => (TestScreen()),
      //   '/test/finish': (context) => (TestFinish()),
      // },
    );
  }
}
