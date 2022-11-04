import 'package:flutter/material.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';

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
      height: 450,
      width: 395,
      margin: const EdgeInsets.only(right: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
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
            ),
            child: Image.asset(
              image,
              width: 362,
              height: 252,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 24,
              left: 24,
              right: 24,
              bottom: 25,
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignmentaceBetween,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  title,
                  style: TextStyles.inter(
                    context: context,
                    fontSize: 24,
                    color: AppsColors.headerDescriptionTextColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  description,
                  style: TextStyles.inter(
                    context: context,
                    fontSize: 14,
                    color: AppsColors.defaultTextColor,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: '\$$price',
                        style: TextStyles.inter(
                          context: context,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: AppsColors.headerDescriptionTextColor,
                        ),
                        children: [
                          TextSpan(
                            text: ' /Person',
                            style: TextStyles.inter(
                              context: context,
                              fontSize: 16,
                              color: AppsColors.defaultTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 37,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: buttonBackgroundColor,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 11,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(46),
                              side: const BorderSide(
                                  color: AppsColors.defaultTextColor)),
                        ),
                        child: Text(
                          'Book Now',
                          style: TextStyles.inter(
                            context: context,
                            fontSize: 13,
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
