import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';
import 'package:travel_ui_landing_page/widgets/widgets.dart';

class FindPopularDestination extends StatelessWidget {
  const FindPopularDestination({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        children: [
          const DefaultPadding(
            child: ModulesHeadingWidget(
              title: 'Find Popular \nDestination',
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Container(
            padding: EdgeInsets.only(
                left: ResponsiveValue(
              context,
              defaultValue: 135.0,
              valueWhen: const [
                Condition.smallerThan(
                  name: MOBILE,
                  value: 40.0,
                ),
                Condition.smallerThan(
                  name: TABLET,
                  value: 60.0,
                ),
                Condition.largerThan(
                  name: TABLET,
                  value: 80.0,
                ),
                Condition.largerThan(
                  name: DESKTOP,
                  value: 135.0,
                )
              ],
            ).value!),
            // width: 386
            height: 440,
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: destinations
                  .map(
                    (destination) => PopularDestinationItem(
                      title: destination.title,
                      description: destination.description,
                      image: destination.image,
                      price: destination.price,
                      buttonBackgroundColor: destination.buttonBackgroundColor,
                      buttonTextColor: destination.buttonTextColor,
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
