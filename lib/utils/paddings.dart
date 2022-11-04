import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class DefaultPadding extends StatelessWidget {
  const DefaultPadding({
    Key? key,
    required this.child,
    this.vertical = 0,
  }) : super(key: key);
  final Widget child;
  final double vertical;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: ResponsiveValue(
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
        ).value!,
        vertical: ResponsiveValue(
          context,
          defaultValue: vertical,
          valueWhen: [
            Condition.smallerThan(
              name: MOBILE,
              value: vertical / 3,
            ),
            Condition.smallerThan(
              name: TABLET,
              value: vertical / 2,
              // landscapeValue: vertical / 2,
            ),
            Condition.largerThan(
              name: TABLET,
              value: vertical / 1.5,
              // landscapeValue: vertical / 2,
            ),
            Condition.largerThan(
              name: DESKTOP,
              value: vertical,
              // landscapeValue: vertical / 2,
            ),
          ],
        ).value!,
      ),
      child: child,
    );
  }
}
