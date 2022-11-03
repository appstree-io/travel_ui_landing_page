import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  TextStyles._();
  static TextStyle poppins({
    required double fontSize,
    FontWeight? fontWeight,
    Color? color,
  }) =>
      GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      );

  static TextStyle sen({
    required double fontSize,
    FontWeight? fontWeight,
    Color? color,
    double? height,
  }) =>
      GoogleFonts.sen(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
          height: height);

  static TextStyle inter({
    required double fontSize,
    FontWeight? fontWeight,
    Color? color,
  }) =>
      GoogleFonts.inter(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      );
}

TextStyle get inter16 => TextStyles.inter(fontSize: 16.sp);
