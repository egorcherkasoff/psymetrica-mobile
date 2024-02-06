import "package:flutter/material.dart";
import 'package:psymetrica/theme/src/button_theme.dart';
import 'package:psymetrica/theme/src/input_theme.dart';
import 'package:psymetrica/theme/src/text_theme.dart';

final appTheme = ThemeData(
  primaryColor: const Color(0xff1095c1),
  textTheme: TextThemes.textTheme,
  elevatedButtonTheme: ButtonThemes.elevatedButtonTheme,
  outlinedButtonTheme: ButtonThemes.outlinedButtonTheme,
  inputDecorationTheme: InputThemes.inputTheme,
  iconButtonTheme: ButtonThemes.iconButtonTheme,
  textButtonTheme: ButtonThemes.textButtonTheme,
);
