import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:travel_ui_landing_page/gen/assets.gen.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';
import 'package:travel_ui_landing_page/widgets/widgets.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultPadding(
      vertical: 24,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SaltyLogo(),
          const ResponsiveVisibility(
            hiddenWhen: [
              Condition.smallerThan(name: TABLET),
            ],
            child: SizedBox(width: 72),
          ),
          // Navigation
          ResponsiveVisibility(
            hiddenWhen: const [
              Condition.smallerThan(name: TABLET),
            ],
            child: Row(
              children: navigation
                  .map<Widget>(
                    (String items) => Padding(
                      padding: const EdgeInsets.only(right: 36),
                      child: Text(
                        items,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: AppsColors.navigationTextColor,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          const Spacer(),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 19,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(27),
                side: const BorderSide(
                  color: AppsColors.buttonColor,
                  width: 1.4,
                ),
              ),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  'Book Now',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppsColors.buttonColor,
                  ),
                ),
                const SizedBox(width: 6),
                Assets.icons.sendIcon.image(
                  width: 16,
                  height: 15,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
