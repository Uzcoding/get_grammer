import 'package:flutter/material.dart';
import 'package:get_grammer/utils/utils.dart';

abstract class AppTheme {
  AppTheme._();

  static final ThemeData themeData = ThemeData(
    fontFamily: 'Montserrat',
    appBarTheme: AppBarTheme(
      brightness: Brightness.light,
      backgroundColor: AppColors.white,
      elevation: 0,
    ),
    primaryColor: AppColors.darkBlue,
    scaffoldBackgroundColor: AppColors.white,
  );

  static final BorderRadiusGeometry radius = BorderRadius.circular(20.0);
  static final List<BoxShadow> shadow = [
    BoxShadow(
      color: const Color(0xff706868),
      offset: Offset(0, -2),
      blurRadius: 10,
    ),
  ];
}
