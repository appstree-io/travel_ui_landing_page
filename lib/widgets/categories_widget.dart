import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_ui_landing_page/widgets/widgets.dart';

import '../utils/utils.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultPadding(
      child: Padding(
        padding: EdgeInsets.only(top: 18.sm, bottom: 32.0.sm),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const ModulesHeadingWidget(title: 'Categories'),
            24.verticalSpace,
            Text(
              'Here are lots of interesting destinations to visit, \nbut don’t be confused—they’re already grouped \nby category.',
              style: TextStyles.inter(
                fontSize: 16.sp,
                color: AppsColors.headerDescriptionTextColor,
              ),
            ),
            60.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: categories
                  .mapIndexed((category, index) => CategoryImageWidget(
                        catergory: category,
                        index: index,
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
