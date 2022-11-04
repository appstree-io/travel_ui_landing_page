import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:travel_ui_landing_page/gen/assets.gen.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';
import 'package:travel_ui_landing_page/widgets/widgets.dart';

class FirstModule extends StatelessWidget {
  const FirstModule({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isSmallerThanTablet =
        ResponsiveWrapper.of(context).isSmallerThan(TABLET);

    return DefaultPadding(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 53),
        child: ResponsiveRowColumn(
          rowSpacing: 67,
          columnSpacing: 67,
          rowMainAxisAlignment: MainAxisAlignment.spaceAround,
          layout: isSmallerThanTablet
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ResponsiveRowColumnItem(
              rowFlex: 1,
              columnOrder: 2,
              rowOrder: 1,
              rowFit: FlexFit.tight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Discover the Best Lovely Places',
                    style: GoogleFonts.sen(
                      fontSize: ResponsiveValue(
                        context,
                        defaultValue: 60.0,
                        valueWhen: const [
                          Condition.smallerThan(
                            name: MOBILE,
                            value: 40.0,
                          ),
                          Condition.largerThan(
                            name: TABLET,
                            value: 86.0,
                          )
                        ],
                      ).value,
                      fontWeight: FontWeight.w700,
                      color: AppsColors.defaultTextColor,
                    ),
                  ),
                  const SizedBox(height: 26),
                  Text(
                    'Plan and book your perfect trip with expert advice, travel tips, destination information and inspiration from us.',
                    style: GoogleFonts.inter(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 44),
                  Container(
                    width: 500,
                    height: 76,
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(38),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            SearchBarSelectionWidget(
                              title: 'Where',
                              description: 'Center Point, Lo...',
                              image: Assets.icons.locationPin.image(height: 13),
                            ),
                            const SizedBox(height: 34),
                            const VerticalDivider(
                              width: 47,
                              color: Color(0xFFEAEAEB),
                            ),
                            const SizedBox(height: 34),
                            SearchBarSelectionWidget(
                              title: 'Date',
                              description: '09th March,2021',
                              image: Assets.icons.calendar.image(height: 13),
                            ),
                          ],
                        ),
                        const SizedBox(height: 57),
                        SizedBox(
                          height: 56,
                          width: 56,
                          // color: AppColors.searchIconBackground,
                          // radius: 15.5
                          // backgroundColor: AppColors.searchIconBackground,
                          child: Assets.icons.searchIcon.image(height: 27),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // const ResponsiveRowColumnItem(
            //   child: ResponsiveVisibility(
            //     hiddenWhen: [
            //       Condition.smallerThan(name: TABLET),
            //     ],
            //     child: SizedBox(width: 67),
            //   ),
            // ),
            ResponsiveRowColumnItem(
              rowFit: FlexFit.tight,
              rowOrder: 2,
              columnOrder: 1,
              rowFlex: 1,
              child: Assets.headerImage.image(height: 555, width: 533.75),
            ),
          ],
        ),
      ),
    );
  }
}
