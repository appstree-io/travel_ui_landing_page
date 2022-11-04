import 'package:flutter/material.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';

class TopDestinationChip extends StatelessWidget {
  const TopDestinationChip(
      {Key? key,
      required this.title,
      this.backgroundColor = AppsColors.backgroundColor,
      // this.borderColor = const Color(0xFF3D3D3D),
      this.textColor = const Color(0xFF3D3D3D),
      this.fontSize = 14})
      : super(key: key);

  final String title;
  final Color backgroundColor;
  // final Color borderColor;
  final Color textColor;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 14.0),
      child: Chip(
        label: Text(
          title,
          style: TextStyles.poppins(
            context: context,
            fontSize: fontSize,
            color: textColor,
          ),
        ),
        backgroundColor: backgroundColor,
        side: const BorderSide(
          color: Color(0xFF3D3D3D),
        ),
      ),
    );
  }
}
