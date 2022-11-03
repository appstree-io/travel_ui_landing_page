import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/utils.dart';

class ModulesHeadingWidget extends StatelessWidget {
  const ModulesHeadingWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ModuleHeadingTitle(title: title),
        const Spacer(),
        const ModuleHeadingNextPreviousButton(),
      ],
    );
  }
}

class ModuleHeadingTitle extends StatelessWidget {
  const ModuleHeadingTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyles.inter(
        fontSize: 56.sp,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class ModuleHeadingNextPreviousButton extends StatelessWidget {
  const ModuleHeadingNextPreviousButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Previous Button
        const ModuleHeadingButton(
          icon: Icons.arrow_back_ios_new_rounded,
          iconColor: AppsColors.defaultTextColor,
        ),
        16.horizontalSpace,
        // Next Button
        const ModuleHeadingButton(
          icon: Icons.arrow_forward_ios_rounded,
          iconColor: AppsColors.backgroundColor,
          backgroundColor: AppsColors.defaultTextColor,
        ),
      ],
    );
  }
}

class ModuleHeadingButton extends StatelessWidget {
  const ModuleHeadingButton({
    Key? key,
    required this.iconColor,
    this.backgroundColor,
    required this.icon,
  }) : super(key: key);

  final Color? backgroundColor;
  final Color iconColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56.sm,
      height: 56.sm,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: EdgeInsets.zero,
          shape: const CircleBorder(
            side: BorderSide(
              color: AppsColors.defaultTextColor,
            ),
          ),
        ),
        child: Icon(
          icon,
          size: 12.sm,
          color: iconColor,
        ),
        onPressed: () {},
      ),
    );
  }
}
