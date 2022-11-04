import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
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
                const SizedBox(height: 20),
                Text(
                  'Enjoy the touring \nwith Salty',
                  style: inter16(context),
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    Assets.social.facebook.image(
                      height: 32,
                      width: 32,
                    ),
                    const SizedBox(width: 14),
                    Assets.social.instagram.image(
                      height: 32,
                      width: 32,
                    ),
                    const SizedBox(width: 14),
                    Assets.social.twitter.image(
                      height: 32,
                      width: 32,
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
                ResponsiveVisibility(
                  visible: false,
                  visibleWhen: [Condition.largerThan(name: TABLET)],
                  child: FooterMenu(
                    heading: 'Resources',
                    menu: [
                      'Download',
                      'Help Center',
                      'Guide Book',
                      'App Directory',
                    ],
                  ),
                ),
                ResponsiveVisibility(
                  visible: false,
                  visibleWhen: [Condition.largerThan(name: TABLET)],
                  child: FooterMenu(
                    heading: 'Travellers',
                    menu: [
                      'Why Travellers',
                      'Enterprice',
                      'Customer Stories',
                      'Instagram post',
                    ],
                  ),
                ),
                ResponsiveVisibility(
                  visible: false,
                  visibleWhen: [Condition.largerThan(name: TABLET)],
                  child: FooterMenu(
                    heading: 'Company',
                    menu: [
                      'Travelling',
                      'About Locato',
                      'Success',
                      'Information',
                    ],
                  ),
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
