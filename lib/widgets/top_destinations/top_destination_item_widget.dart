import 'package:flutter/material.dart';
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
            width: width,
            height: height,
            // fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                colors: [
                  Color(0x001E1E1C),
                  Color(0xE5141412),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Vietnam',
                  style: TextStyles.inter(
                    context: context,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Worefall',
                  style: TextStyles.inter(
                    context: context,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
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
