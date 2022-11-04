import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:travel_ui_landing_page/gen/assets.gen.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';
import 'package:travel_ui_landing_page/widgets/widgets.dart';

class CustomerFeedback extends StatelessWidget {
  const CustomerFeedback({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isSmallerThanTablet =
        ResponsiveWrapper.of(context).isSmallerThan(TABLET);
    return DefaultPadding(
      vertical: 58,
      child: ResponsiveRowColumn(
        rowSpacing: 175,
        columnSpacing: 40,
        layout: isSmallerThanTablet
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        children: [
          ResponsiveRowColumnItem(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(245),
              child: Stack(
                children: [
                  ColoredBox(
                    color: const Color(0xFFEE8162),
                    child: Assets.guyTakingSelfie.image(
                      width: 407,
                      height: 563,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // const SizedBox(width: 175),
          ResponsiveRowColumnItem(
            rowFlex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 67,
                  height: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFFFD482),
                        Color(0xFFFFBE82),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                const ModuleHeadingTitle(
                  title: 'A Customer Said About Us:',
                ),
                const SizedBox(height: 26),
                Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Salty helped me a lot in finding the best place for our first outdoor adventure trip. They responded very quickly and gave me a detailed account of the place—its history, as well as its best features.',
                        style: TextStyles.inter(
                          context: context,
                          fontSize: 18,
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
                                  context: context,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Enterpreneur',
                                style: TextStyles.inter(
                                  context: context,
                                  fontSize: 12,
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
