import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

final appTheme = ThemeData(
  primaryColor: const Color(0xff1095c0),
  textTheme: GoogleFonts.montserratTextTheme().copyWith(
    displayMedium: const TextStyle(fontSize: 20.0),
    displayLarge: const TextStyle(fontSize: 24.0),
    displaySmall: const TextStyle(fontSize: 16.0),
  ),
);
