import 'package:flutter/material.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';

class FooterMenuHeading extends StatelessWidget {
  const FooterMenuHeading({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyles.inter(
        context: context,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
