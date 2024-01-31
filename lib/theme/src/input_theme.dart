import 'package:flutter/material.dart';
import 'package:psymetrica/theme/src/text_theme.dart';

//тема для инпутов
class InputThemes {
  static final inputTheme = InputDecorationTheme(
    border: _buildBorder(const Color(0xffa2afb9)),
    contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    focusedBorder: _buildBorder(const Color(0xff1095c1)),
    hintStyle: TextThemes.textTheme.displayMedium,
  );

  static OutlineInputBorder _buildBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 1),
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
    );
  }
}
