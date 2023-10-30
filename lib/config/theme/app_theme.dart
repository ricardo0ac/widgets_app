import 'package:flutter/material.dart';

const colorList = [
  Colors.blue,
  Colors.orange,
  Colors.teal,
  Colors.green,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0,
            'Seleccionar un color que este dentro del rango estipulado'),
        assert(selectedColor < colorList.length,
            'Select color must be less or equal than ${colorList.length}');

  ThemeData getTheme() =>
      ThemeData(useMaterial3: true, 
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(
        centerTitle: true
      )
      );
}
