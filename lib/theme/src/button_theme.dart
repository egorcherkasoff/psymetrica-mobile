import 'package:flutter/material.dart';
import 'package:psymetrica/theme/src/text_theme.dart';

class ButtonThemes {
  // темы кнопок
  static final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff1095c1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: TextThemes.textTheme.bodyMedium!),
  );

  static final outlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: const Color(0xff1095c1),
      side: const BorderSide(color: Color(0xff1095c1), width: 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      textStyle: TextThemes.textTheme.bodyMedium!,
    ),
  );

  static final iconButtonTheme = IconButtonThemeData(
    style: IconButton.styleFrom(
      foregroundColor: Colors.black54,
      iconSize: 28,
    ),
  );

  static final textButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: const Color(0xff1095c1),
      padding: EdgeInsets.zero,
      textStyle: TextThemes.textTheme.displayLarge!.copyWith(fontSize: 14),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    ),
  );
}
