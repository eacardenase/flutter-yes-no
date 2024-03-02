import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF5C11D4);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  // AppTheme._(); // private constructor. THe class cannot be instantiated

  AppTheme({
    this.selectedColor = 0,
  })  : assert(
          selectedColor >= 0,
          'selectedColor value must be greater than or equal to 0',
        ),
        assert(
          selectedColor < _colorThemes.length,
          'selectedColor value must be less than ${_colorThemes.length}',
        );

  int selectedColor;

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness: Brightness.light,
    );
  }
}
