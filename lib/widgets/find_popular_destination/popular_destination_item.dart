import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/utils.dart';

class PopularDestinationItem extends StatelessWidget {
  const PopularDestinationItem({
    Key? key,
    required this.title,
    required this.description,
    required this.price,
    required this.buttonBackgroundColor,
    required this.buttonTextColor,
    required this.image,
  }) : super(key: key);

  final String title;
  final String description;
  final int price;
  final Color buttonBackgroundColor;
  final Color buttonTextColor;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450.sm,
      width: 395.sm,
      margin: EdgeInsets.only(right: 30.r),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: Colors.white,
            width: 2,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 12,
              left: 12,
              right: 12,
            ).r,
            child: Image.asset(
              image,
              width: 362.sm,
              height: 252.sm,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 24,
              left: 24,
              right: 24,
              bottom: 25,
            ).r,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  title,
                  style: TextStyles.inter(
                    fontSize: 24.sp,
                    color: AppsColors.headerDescriptionTextColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                12.verticalSpacingRadius,
                Text(
                  description,
                  style: TextStyles.inter(
                    fontSize: 14.sp,
                    color: AppsColors.defaultTextColor,
                  ),
                ),
                20.verticalSpacingRadius,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: '\$$price',
                        style: TextStyles.inter(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                          color: AppsColors.headerDescriptionTextColor,
                        ),
                        children: [
                          TextSpan(
                            text: ' /Person',
                            style: TextStyles.inter(
                              fontSize: 16.sp,
                              color: AppsColors.defaultTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 100.sm,
                      height: 37.sm,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: buttonBackgroundColor,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 11,
                          ).w,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(46).w,
                              side: const BorderSide(
                                  color: AppsColors.defaultTextColor)),
                        ),
                        child: Text(
                          'Book Now',
                          style: TextStyles.inter(
                            fontSize: 13.sp,
                            color: buttonTextColor,
                          ),
                        ),
                      ),
                    ),
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
