import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';
import 'package:travel_ui_landing_page/widgets/widgets.dart';

class FooterMenu extends StatelessWidget {
  const FooterMenu({
    Key? key,
    required this.menu,
    required this.heading,
  }) : super(key: key);
  final String heading;
  final List<String> menu;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FooterMenuHeading(title: heading),
        22.verticalSpaceFromWidth,
        ...menu
            .mapIndexed(
              (title, index) => Padding(
                padding: EdgeInsets.only(
                        bottom: (index == menu.length + 1) ? 0 : 12.0)
                    .r,
                child: FooterMenuText(title: title),
              ),
            )
            .toList(),
      ],
    );
  }
}
