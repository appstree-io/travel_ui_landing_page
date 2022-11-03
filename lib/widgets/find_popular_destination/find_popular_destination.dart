import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';
import 'package:travel_ui_landing_page/widgets/widgets.dart';

class FindPopularDestination extends StatelessWidget {
  const FindPopularDestination({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50.0).r,
      child: Column(
        children: [
          const DefaultPadding(
            child: ModulesHeadingWidget(
              title: 'Find Popular \nDestination',
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 135).r,
            // width: 386.sm,
            height: 440.sm,
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
