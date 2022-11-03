import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_ui_landing_page/gen/assets.gen.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';

class NewsletterWidget extends StatelessWidget {
  const NewsletterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultPadding(
      vertical: 46,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 1170.sm,
            height: 358.sm,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30).r,
              color: const Color(0xFFFFD482),
            ),
            child: Assets.intersect.image(),
          ),
          Column(
            children: [
              Text(
                'Sign up to our newsletter',
                style: TextStyles.inter(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              16.verticalSpaceFromWidth,
              Text(
                'Recieve latest news, update, and many other things every week.',
                style: inter16,
              ),
              40.verticalSpaceFromWidth,
              Container(
                width: 450.sm,
                height: 60.sm,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12).r,
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ).r,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Your email address',
                            border: InputBorder.none,
                            // contentPadding: EdgeInsets.symmetric(
                            //   horizontal: 30,
                            //   vertical: 15,
                            // ).w,
                            hintStyle: inter16,
                          ),
                          textAlignVertical: TextAlignVertical.center,
                        ),
                      ),
                      Container(
                        width: 40.sm,
                        height: 40.sm,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12).r,
                          color: AppsColors.buttonColor,
                        ),
                        child: Assets.icons.sendIcon.image(
                          color: Colors.white,
                          width: 15.83.sm,
                          height: 17.08.sm,
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
    );
  }
}
