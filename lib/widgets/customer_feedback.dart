import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_ui_landing_page/gen/assets.gen.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';
import 'package:travel_ui_landing_page/widgets/widgets.dart';

class CustomerFeedback extends StatelessWidget {
  const CustomerFeedback({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultPadding(
      vertical: 58,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(245).r,
            child: Stack(
              children: [
                ColoredBox(
                  color: const Color(0xFFEE8162),
                  child: Assets.guyTakingSelfie.image(
                    width: 407.sm,
                    height: 563.sm,
                  ),
                ),
              ],
            ),
          ),
          175.horizontalSpaceRadius,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 67.sm,
                  height: 8.sm,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4).w,
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFFFD482),
                        Color(0xFFFFBE82),
                      ],
                    ),
                  ),
                ),
                12.verticalSpaceFromWidth,
                const ModuleHeadingTitle(
                  title: 'A Customer Said About Us:',
                ),
                26.verticalSpaceFromWidth,
                Container(
                  padding: const EdgeInsets.all(30).r,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14).w,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Salty helped me a lot in finding the best place for our first outdoor adventure trip. They responded very quickly and gave me a detailed account of the place—its history, as well as its best features.',
                        style: TextStyles.inter(
                          fontSize: 18.sp,
                        ),
                      ),
                      Row(
                        children: [
                          ...List.generate(
                            5,
                            (index) => const Icon(
                              Icons.star_rate_rounded,
                              color: Color(0xFFFFC14B),
                            ),
                          ).toList()
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Andrew Sarma',
                                style: TextStyles.inter(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Enterpreneur',
                                style: TextStyles.inter(
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                          const ModuleHeadingNextPreviousButton()
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
