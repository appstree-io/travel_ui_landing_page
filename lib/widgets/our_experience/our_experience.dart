import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_ui_landing_page/gen/assets.gen.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';
import 'package:travel_ui_landing_page/widgets/widgets.dart';

class OurExperienceWidget extends StatelessWidget {
  const OurExperienceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultPadding(
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                fit: StackFit.passthrough,
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: [
                  ClipOval(
                    child: Container(
                      width: 490.sm,
                      height: 490.sm,
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
                      height: 562.sm,
                      width: 507.sm,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: -40.sm,
                    bottom: 40.sm,
                    child: RoundedWhiteCardWidget(
                      width: 140.sm,
                      height: 218.sm,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 80.sm,
                            height: 80.sm,
                            padding: EdgeInsets.symmetric(
                              horizontal: 21.sm,
                              vertical: 16.sm,
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
                              width: 38.sm,
                              height: 48.62.sm,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            '600%',
                            style: TextStyles.poppins(
                              fontSize: 30.sp,
                              fontWeight: FontWeight.w600,
                              color: AppsColors.searchIconBackground,
                            ),
                          ),
                          8.verticalSpace,
                          Text(
                            'Destinations',
                            style: TextStyles.inter(
                              fontSize: 18.sp,
                              color: AppsColors.defaultTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0.sm,
                    right: -20.sm,
                    child: RoundedWhiteCardWidget(
                      width: 175.sm,
                      height: 100.sm,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Assets.icons.cellularSignal.image(
                                height: 30.sm,
                                width: 30.sm,
                              ),
                              Text(
                                '5000+',
                                style: TextStyles.poppins(
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Customers',
                            style: TextStyles.poppins(
                              fontSize: 11.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              156.horizontalSpace,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Our Experience',
                      style: TextStyles.inter(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          color: AppsColors.buttonColor),
                    ),
                    20.verticalSpace,
                    const ModuleHeadingTitle(
                      title: 'Our Stories Have Adventures',
                    ),
                    20.verticalSpace,
                    Text(
                      'We are experienced in bringing adventures to stay their journey, with all outdoor destinations in the world as our specialties. Start your adventure now! Nature has already called you!',
                      style: inter16,
                    ),
                    40.verticalSpace,
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RoundedWhiteCardWidget(
                          width: 166.sm,
                          height: 178.sm,
                          padding: const EdgeInsets.all(26),
                          child: Column(
                            children: [
                              Text(
                                '12K+',
                                style: TextStyles.inter(
                                    fontSize: 46.sp,
                                    color: AppsColors.searchIconBackground),
                              ),
                              Text(
                                'Succes Journey',
                                style: TextStyles.inter(
                                  fontSize: 21.sp,
                                  color:
                                      AppsColors.whiteCardDescriptionTextColor,
                                ),
                              )
                            ],
                          ),
                        ),
                        const Spacer(),
                        RoundedWhiteCardWidget(
                          width: 166.sm,
                          height: 178.sm,
                          padding: const EdgeInsets.all(26),
                          child: Column(
                            children: [
                              Text(
                                '16+',
                                style: TextStyles.inter(
                                    fontSize: 46.sp,
                                    color: AppsColors.searchIconBackground),
                              ),
                              Text(
                                'Awards Winning',
                                style: TextStyles.inter(
                                  fontSize: 21.sp,
                                  color:
                                      AppsColors.whiteCardDescriptionTextColor,
                                ),
                              )
                            ],
                          ),
                        ),
                        const Spacer(),
                        RoundedWhiteCardWidget(
                          width: 166.sm,
                          height: 178.sm,
                          padding: const EdgeInsets.all(26),
                          child: Column(
                            children: [
                              Text(
                                '20+',
                                style: TextStyles.inter(
                                    fontSize: 46.sp,
                                    color: AppsColors.searchIconBackground),
                              ),
                              Text(
                                'Years Of Experience',
                                style: TextStyles.inter(
                                  fontSize: 21.sp,
                                  color:
                                      AppsColors.whiteCardDescriptionTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
