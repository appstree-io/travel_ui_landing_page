import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_ui_landing_page/gen/assets.gen.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';
import 'package:travel_ui_landing_page/widgets/widgets.dart';

class TopDestinations extends StatelessWidget {
  const TopDestinations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultPadding(
      vertical: 37,
      child: Column(
        children: [
          const TopDestinationsHeader(),
          51.verticalSpaceFromWidth,
          const TopDestinationsImageGallery(),
        ],
      ),
    );
  }
}

class TopDestinationsImageGallery extends StatelessWidget {
  const TopDestinationsImageGallery({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            TopDestinationItemWidget(
              width: 270,
              height: 250,
              image: Assets.topDestinations.topDestination1.path,
              rating: 3.5,
              chipBackgroundColor: Colors.white,
              chipTextColor: AppsColors.defaultTextColor,
              padding: const EdgeInsets.only(
                bottom: 13,
                right: 15,
              ).w,
            ),
            TopDestinationItemWidget(
              width: 270,
              height: 250,
              image: Assets.topDestinations.topDestination2.path,
              rating: 3.5,
              chipBackgroundColor: Colors.white,
              chipTextColor: AppsColors.defaultTextColor,
              padding: const EdgeInsets.only(
                top: 13,
                right: 15,
              ).w,
            ),
          ],
        ),
        TopDestinationItemWidget(
          width: 370,
          height: 526,
          image: Assets.topDestinations.topDestination3.path,
          rating: 3.5,
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
          ).r,
        ),
        Column(
          children: [
            TopDestinationItemWidget(
              width: 470,
              height: 250,
              image: Assets.topDestinations.topDestination4.path,
              rating: 3.5,
              padding: const EdgeInsets.only(
                bottom: 6.5,
                left: 15,
              ).r,
            ),
            Row(
              children: [
                TopDestinationItemWidget(
                  width: 170,
                  height: 263,
                  image: Assets.topDestinations.topDestination5.path,
                  rating: 3.5,
                  padding: const EdgeInsets.only(
                    top: 6.5,
                    left: 15,
                    right: 15,
                  ).r,
                ),
                TopDestinationItemWidget(
                  width: 270,
                  height: 263,
                  image: Assets.topDestinations.topDestination6.path,
                  rating: 3.5,
                  padding: const EdgeInsets.only(
                    top: 6.5,
                    left: 15,
                  ).r,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}

class TopDestinationsHeader extends StatelessWidget {
  const TopDestinationsHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ModuleHeadingTitle(
          title: 'Top Destinations',
        ),
        16.verticalSpaceFromWidth,
        Text(
          'Sost Brilliant reasons Entrada should be your one-stop-shop!',
          style: TextStyles.inter(
            fontSize: 15.sp,
          ),
        ),
        28.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            TopDestinationChip(
              title: 'London',
              backgroundColor: Color(0xFF3D3D3D),
              textColor: Colors.white,
            ),
            TopDestinationChip(title: 'Bangkok'),
            TopDestinationChip(title: 'England'),
            TopDestinationChip(title: 'Singapore'),
            TopDestinationChip(title: 'Italy'),
          ],
        ),
      ],
    );
  }
}
