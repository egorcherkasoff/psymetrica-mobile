import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextThemes {
  // темы шрифтов
  static final textTheme = TextTheme(
    // logo
    displayLarge: GoogleFonts.montserratTextTheme().displayLarge!.copyWith(
          fontSize: 32,
          color: const Color(0xff1095c1),
          fontWeight: FontWeight.bold,
        ),
    //h1
    titleLarge: GoogleFonts.montserratTextTheme().titleLarge!.copyWith(
          fontSize: 32,
          color: const Color(0xff2c3d49),
          fontWeight: FontWeight.w600,
        ),
    //h2
    titleMedium: GoogleFonts.montserratTextTheme().titleMedium!.copyWith(
          fontSize: 24,
          color: const Color(0xff2c3d49),
          fontWeight: FontWeight.w500,
        ),
    // body text
    bodyMedium: GoogleFonts.interTextTheme().bodyMedium!.copyWith(
          fontSize: 18,
          color: const Color(0xff415462),
          fontWeight: FontWeight.w400,
        ),
    // labels
    labelMedium: GoogleFonts.interTextTheme().labelMedium!.copyWith(
          fontSize: 16,
          color: const Color(0xff415462),
          fontWeight: FontWeight.w400,
        ),
    displayMedium: GoogleFonts.interTextTheme().displayMedium!.copyWith(
          fontSize: 18,
          color: const Color(0xff73828c),
          fontWeight: FontWeight.w400,
        ),
  );
}
