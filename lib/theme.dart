import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

final appTheme = ThemeData(
  primaryColor: const Color(0xff1095c0),
  textTheme: TextTheme(
    displayLarge: GoogleFonts.montserrat(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
    ),
    displayMedium: GoogleFonts.montserrat(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    displaySmall:
        GoogleFonts.montserrat(fontSize: 15.0, fontWeight: FontWeight.w500),
  ),
);
