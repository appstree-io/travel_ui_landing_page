import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';

class SearchBarSelectionWidget extends StatelessWidget {
  const SearchBarSelectionWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
  }) : super(key: key);

  final String title;
  final String description;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.inter(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF2D3134),
          ),
        ),
        8.verticalSpaceFromWidth,
        Row(
          children: [
            Text(
              description,
              style: TextStyles.inter(
                fontSize: 12.sp,
                color: const Color(0xFF9498A4),
              ),
            ),
            25.horizontalSpaceRadius,
            image,
          ],
        ),
      ],
    );
  }
}
