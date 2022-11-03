import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui_landing_page/gen/assets.gen.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';
import 'package:travel_ui_landing_page/widgets/widgets.dart';

class FirstModule extends StatelessWidget {
  const FirstModule({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultPadding(
      child: Padding(
        padding: EdgeInsets.only(bottom: 53.sm),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Discover the Best Lovely Places',
                    style: GoogleFonts.sen(
                      fontSize: 86.sp,
                      fontWeight: FontWeight.w700,
                      color: AppsColors.defaultTextColor,
                    ),
                  ),
                  26.verticalSpace,
                  Text(
                    'Plan and book your perfect trip with expert advice, travel tips, destination information and inspiration from us.',
                    style: GoogleFonts.inter(
                      fontSize: 18.sp,
                    ),
                  ),
                  44.verticalSpace,
                  Container(
                    width: 500.sm,
                    height: 76.sm,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.0.sm,
                      vertical: 10.sm,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(38.sm),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            SearchBarSelectionWidget(
                              title: 'Where',
                              description: 'Center Point, Lo...',
                              image:
                                  Assets.icons.locationPin.image(height: 13.sm),
                            ),
                            34.horizontalSpaceRadius,
                            VerticalDivider(
                              width: 47.sm,
                              color: const Color(0xFFEAEAEB),
                            ),
                            34.horizontalSpaceRadius,
                            SearchBarSelectionWidget(
                              title: 'Date',
                              description: '09th March,2021',
                              image: Assets.icons.calendar.image(height: 13.sm),
                            ),
                          ],
                        ),
                        57.horizontalSpaceRadius,
                        SizedBox(
                          height: 56.sm,
                          width: 56.sm,
                          // color: AppColors.searchIconBackground,
                          // radius: 15.5.sm,
                          // backgroundColor: AppColors.searchIconBackground,
                          child: Assets.icons.searchIcon.image(height: 27.sm),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            67.horizontalSpace,
            Expanded(
              child: Assets.headerImage.image(
                height: 555.sm,
                width: 533.75.sm,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
