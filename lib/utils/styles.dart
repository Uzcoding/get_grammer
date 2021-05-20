import 'package:flutter/material.dart';
import 'package:get_grammer/utils/utils.dart';

abstract class Styles {
  Styles._();

  static const styleW700S25 = TextStyle(
    fontSize: 25.0,
    color: AppColors.white,
    fontWeight: FontWeight.bold,
  );

  static const styleW600S19 = TextStyle(
    fontSize: 19.0,
    color: AppColors.darkBlue,
    fontWeight: FontWeight.w600,
  );

  static const styleW500S17 = TextStyle(
    fontSize: 17.0,
    color: AppColors.black,
    fontWeight: FontWeight.w500,
  );

  static const styleW400S14 = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: AppColors.grey,
  );
}
