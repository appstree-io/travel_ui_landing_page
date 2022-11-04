import 'package:flutter/material.dart';
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
          children: const [
            HeaderWidget(),
            FirstModule(),
            CategoriesWidget(),
            SizedBox(height: 58),
            OurExperienceWidget(),
            SizedBox(height: 32),
            FindPopularDestination(),
            SizedBox(height: 32),
            TopDestinations(),
            SizedBox(height: 37),
            CustomerFeedback(),
            SizedBox(height: 28),
            NewsletterWidget(),
            SizedBox(height: 15),
            FooterWidget()
          ],
        ),
      ),
    );
  }
}
