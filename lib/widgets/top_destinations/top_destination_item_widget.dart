import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';
import 'package:travel_ui_landing_page/widgets/widgets.dart';

class TopDestinationItemWidget extends StatelessWidget {
  const TopDestinationItemWidget({
    Key? key,
    required this.rating,
    required this.image,
    required this.width,
    required this.height,
    this.padding = const EdgeInsets.all(8.0),
    this.chipBackgroundColor = AppsColors.defaultTextColor,
    this.chipTextColor = Colors.white,
  }) : super(key: key);

  final double height, width, rating;
  final String image;
  final EdgeInsetsGeometry padding;
  final Color chipTextColor, chipBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Image.asset(
            image,
            width: width.sm,
            height: height.sm,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20).w,
              gradient: const LinearGradient(
                colors: [
                  Color(0x001E1E1C),
                  Color(0xE5141412),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20.sm,
            left: 20.sm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Vietnam',
                  style: TextStyles.inter(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                10.verticalSpacingRadius,
                Text(
                  'Worefall',
                  style: TextStyles.inter(
                    fontSize: 14.sp,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 20.sm,
            left: 20.sm,
            child: TopDestinationChip(
              title: '$rating',
              textColor: chipTextColor,
              backgroundColor: chipBackgroundColor,
            ),
          ),
        ],
      ),
    );
  }
}
