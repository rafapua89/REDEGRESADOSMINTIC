import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'colors.dart';
import 'text_styles.dart';

class MyTheme {
  static ThemeData get ligthTheme {
    return ThemeData(
      brightness: Brightness.light,
      primarySwatch: AppColors.createMaterialColor(AppColors.primaryColor),
      colorScheme: AppColors.lightScheme,
      fontFamily: AppTextStyle.fontFamily,
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(),
        fillColor: Colors.grey.shade300,
      ),
    );
  }

  // on DarkMode the Swatch parameter is not working
  // https://github.com/flutter/flutter/issues/19089
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primarySwatch: AppColors.createMaterialColor(AppColors.primaryColor),
      colorScheme: AppColors.darkScheme,
      // this can all be copied, waiting for verification
      fontFamily: AppTextStyle.fontFamily,
      floatingActionButtonTheme: FloatingActionButtonThemeData(),
      // copy from ligthTheme
      inputDecorationTheme: ligthTheme.inputDecorationTheme,
    );
  }
}
