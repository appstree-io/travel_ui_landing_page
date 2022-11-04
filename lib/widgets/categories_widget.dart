import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:travel_ui_landing_page/widgets/widgets.dart';

import '../utils/utils.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isSmallerThanTablet =
        ResponsiveWrapper.of(context).isSmallerThan(TABLET);
    return DefaultPadding(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 18,
          bottom: 32.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const ModulesHeadingWidget(title: 'Categories'),
            const SizedBox(height: 24),
            Text(
              'Here are lots of interesting destinations to visit, \nbut don’t be confused—they’re already grouped \nby category.',
              style: TextStyles.inter(
                context: context,
                fontSize: 16,
                color: AppsColors.headerDescriptionTextColor,
              ),
            ),
            const SizedBox(height: 60),
            ResponsiveRowColumn(
              columnSpacing: 20,
              layout: isSmallerThanTablet
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              // rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  rowFit: FlexFit.loose,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...categories
                          .take(3)
                          .mapIndexed(
                            (category, index) => Flexible(
                              child: CategoryImageWidget(
                                catergory: category,
                                index: index,
                              ),
                            ),
                          )
                          .toList(),
                    ],
                  ),
                ),
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  rowFit: FlexFit.loose,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...categories
                          .skip(3)
                          .mapIndexed((category, index) => Flexible(
                                child: CategoryImageWidget(
                                  catergory: category,
                                  index: index,
                                ),
                              ))
                          .toList(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
