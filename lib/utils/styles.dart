import 'package:flutter/material.dart';
import 'package:get_grammer/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  Styles._();

  static final styleW600S25 = GoogleFonts.montserrat(
    fontSize: 25.0,
    color: AppColors.white,
    fontWeight: FontWeight.bold,
  );
  static final styleW400S16 = GoogleFonts.montserrat(
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
    color: AppColors.grey,
  );
}
