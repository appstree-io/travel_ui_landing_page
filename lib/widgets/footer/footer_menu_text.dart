import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';

class FooterMenuText extends StatelessWidget {
  const FooterMenuText({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyles.inter(
        fontSize: 14.sp,
        color: const Color(0xFF676A6C),
      ),
    );
  }
}
