import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class TextStyles {
  TextStyles._();
  static TextStyle poppins({
    required double fontSize,
    FontWeight? fontWeight,
    Color? color,
    required BuildContext context,
  }) =>
      GoogleFonts.poppins(
        fontSize: resonsiveFontSize(context, fontSize),
        fontWeight: fontWeight,
        color: color,
      );

  static TextStyle sen({
    required double fontSize,
    FontWeight? fontWeight,
    Color? color,
    double? height,
    required BuildContext context,
  }) =>
      GoogleFonts.sen(
          fontSize: resonsiveFontSize(context, fontSize),
          fontWeight: fontWeight,
          color: color,
          height: height);

  static TextStyle inter({
    required double fontSize,
    FontWeight? fontWeight,
    Color? color,
    required BuildContext context,
  }) =>
      GoogleFonts.inter(
        fontSize: resonsiveFontSize(context, fontSize),
        fontWeight: fontWeight,
        color: color,
      );
}

TextStyle inter16(BuildContext context) =>
    TextStyles.inter(context: context, fontSize: 16);

double resonsiveFontSize(BuildContext context, double fontSize) =>
    ResponsiveValue(
      context,
      defaultValue: fontSize,
      valueWhen: [
        Condition.smallerThan(
          name: MOBILE,
          value: fontSize / 1.5,
        ),
        Condition.smallerThan(
          name: TABLET,
          value: fontSize / 1.25,
        ),
        // Condition.largerThan(
        //   name: TABLET,
        //   value: 80.0,
        // )
      ],
    ).value!;
