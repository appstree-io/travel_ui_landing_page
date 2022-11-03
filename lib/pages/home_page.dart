import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';
import 'package:travel_ui_landing_page/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppsColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(),
            const FirstModule(),
            const CategoriesWidget(),
            58.verticalSpaceFromWidth,
            const OurExperienceWidget(),
            32.verticalSpaceFromWidth,
            const FindPopularDestination(),
            32.verticalSpaceFromWidth,
            const TopDestinations(),
            37.verticalSpaceFromWidth,
            const CustomerFeedback(),
            28.verticalSpaceFromWidth,
            const NewsletterWidget(),
            15.verticalSpaceFromWidth,
            const FooterWidget()
          ],
        ),
      ),
    );
  }
}
