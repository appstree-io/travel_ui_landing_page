import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:travel_ui_landing_page/gen/assets.gen.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';
import 'package:travel_ui_landing_page/widgets/widgets.dart';

class OurExperienceWidget extends StatelessWidget {
  const OurExperienceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isSmallerThanTablet =
        ResponsiveWrapper.of(context).isSmallerThan(TABLET);

    return DefaultPadding(
      child: ResponsiveRowColumn(
        rowSpacing: 156,
        columnSpacing: 70,
        layout: isSmallerThanTablet
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        children: [
          ResponsiveRowColumnItem(
            rowFlex: 1,
            // columnFlex: 1,
            // columnFit: FlexFit.loose,
            child: Stack(
              // fit: StackFit.passthrough,
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                ClipOval(
                  child: Container(
                    width: 490,
                    height: 490,
                    decoration: const BoxDecoration(
                        gradient: RadialGradient(
                      colors: [
                        Color(0x00FFD482),
                        Color(0xFFFFD482),
                      ],
                    )),
                  ),
                ),
                ClipOval(
                  child: Assets.boy.image(
                    height: 562,
                    width: 507,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: -40,
                  bottom: 40,
                  child: RoundedWhiteCardWidget(
                    width: 140,
                    height: 218,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 21,
                            vertical: 16,
                          ),
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFFFFECC9), Color(0xFFFFD482)],
                              stops: [
                                10,
                                139,
                              ],
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Assets.icons.substractIcon.image(
                            width: 38,
                            height: 48.62,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '600%',
                          style: TextStyles.poppins(
                            context: context,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: AppsColors.searchIconBackground,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Destinations',
                          style: TextStyles.inter(
                            context: context,
                            fontSize: 18,
                            color: AppsColors.defaultTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: -20,
                  child: RoundedWhiteCardWidget(
                    width: 175,
                    height: 100,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Assets.icons.cellularSignal.image(
                              height: 30,
                              width: 30,
                            ),
                            Text(
                              '5000+',
                              style: TextStyles.poppins(
                                context: context,
                                fontSize: 26,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Customers',
                          style: TextStyles.poppins(
                            context: context,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          // const SizedBox(width: 156),
          ResponsiveRowColumnItem(
            rowFlex: 1,
            // columnFlex: 1,
            // columnFit: FlexFit.loose,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Our Experience',
                  style: TextStyles.inter(
                    context: context,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppsColors.buttonColor,
                  ),
                ),
                const SizedBox(height: 20),
                const ModuleHeadingTitle(
                  title: 'Our Stories Have Adventures',
                ),
                const SizedBox(height: 20),
                Text(
                  'We are experienced in bringing adventures to stay their journey, with all outdoor destinations in the world as our specialties. Start your adventure now! Nature has already called you!',
                  style: inter16(context),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: RoundedWhiteCardWidget(
                        width: 166,
                        height: 178,
                        padding: const EdgeInsets.all(26),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '12K+',
                              style: TextStyles.inter(
                                context: context,
                                fontSize: 46,
                                color: AppsColors.searchIconBackground,
                              ),
                            ),
                            Text(
                              'Succes Journey',
                              style: TextStyles.inter(
                                context: context,
                                fontSize: 21,
                                color: AppsColors.whiteCardDescriptionTextColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    // const Spacer(),
                    Flexible(
                      child: RoundedWhiteCardWidget(
                        width: 166,
                        height: 178,
                        padding: const EdgeInsets.all(26),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '16+',
                              style: TextStyles.inter(
                                context: context,
                                fontSize: 46,
                                color: AppsColors.searchIconBackground,
                              ),
                            ),
                            Text(
                              'Awards Winning',
                              style: TextStyles.inter(
                                context: context,
                                fontSize: 21,
                                color: AppsColors.whiteCardDescriptionTextColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    // const Spacer(),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: RoundedWhiteCardWidget(
                        width: 166,
                        height: 178,
                        padding: const EdgeInsets.all(26),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '20+',
                              style: TextStyles.inter(
                                context: context,
                                fontSize: 46,
                                color: AppsColors.searchIconBackground,
                              ),
                            ),
                            Text(
                              'Years Of Experience',
                              style: TextStyles.inter(
                                context: context,
                                fontSize: 20,
                                color: AppsColors.whiteCardDescriptionTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
