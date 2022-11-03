import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
