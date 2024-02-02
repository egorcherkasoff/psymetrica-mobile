import 'package:flutter/material.dart';
import 'package:psymetrica/screens/tabs.dart';
import 'package:psymetrica/screens/welcome.dart';
import 'package:psymetrica/theme/theme.dart';

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
      home: const Welcome(),
    );
  }
}
