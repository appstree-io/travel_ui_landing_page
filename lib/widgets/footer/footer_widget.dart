import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_ui_landing_page/gen/assets.gen.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';
import 'package:travel_ui_landing_page/widgets/widgets.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultPadding(
      vertical: 79,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SaltyLogo(),
                20.verticalSpaceFromWidth,
                Text(
                  'Enjoy the touring \nwith Salty',
                  style: inter16,
                ),
                40.verticalSpaceFromWidth,
                Row(
                  children: [
                    Assets.social.facebook.image(
                      height: 32.sm,
                      width: 32.sm,
                    ),
                    14.horizontalSpaceRadius,
                    Assets.social.instagram.image(
                      height: 32.sm,
                      width: 32.sm,
                    ),
                    14.horizontalSpaceRadius,
                    Assets.social.twitter.image(
                      height: 32.sm,
                      width: 32.sm,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Flexible(
            flex: 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                FooterMenu(
                  heading: 'Resources',
                  menu: [
                    'Download',
                    'Help Center',
                    'Guide Book',
                    'App Directory',
                  ],
                ),
                FooterMenu(
                  heading: 'Travellers',
                  menu: [
                    'Why Travellers',
                    'Enterprice',
                    'Customer Stories',
                    'Instagram post',
                  ],
                ),
                FooterMenu(
                  heading: 'Company',
                  menu: [
                    'Travelling',
                    'About Locato',
                    'Success',
                    'Information',
                  ],
                ),
                FooterMenu(
                  heading: 'Get App',
                  menu: [
                    'App Store',
                    'Google Play Store',
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
