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

  static const gradient = LinearGradient(
    begin: Alignment(-0.93, 0.0),
    end: Alignment(0.34, 0.0),
    colors: [
      const Color(0xff0baffd),
      const Color(0xff5663ff),
      const Color(0xffc912e4)
    ],
    stops: [0.0, 0.262, 1.0],
  );
}
