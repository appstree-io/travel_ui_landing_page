import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
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
      child: Container(
        width: 1170,
        height: 358,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(image: Assets.intersect.provider()),
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xFFFFD482),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign up to our newsletter',
              style: TextStyles.inter(
                context: context,
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Recieve latest news, update, and many other things every week.',
              style: inter16(context),
            ),
            const SizedBox(height: 40),
            Container(
              constraints: const BoxConstraints(
                maxWidth: 450,
                maxHeight: 60,
              ),
              // width: 450,
              // height: 60,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
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
                        // ),
                        hintStyle: inter16(context),
                      ),
                      textAlignVertical: TextAlignVertical.center,
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppsColors.buttonColor,
                    ),
                    child: Assets.icons.sendIcon.image(
                      color: Colors.white,
                      width: 15.83,
                      height: 17.08,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
