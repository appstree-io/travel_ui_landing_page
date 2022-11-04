import 'package:flutter/material.dart';

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
        context: context,
        fontSize: 56,
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
      children: const [
        // Previous Button
        ModuleHeadingButton(
          icon: Icons.arrow_back_ios_new_rounded,
          iconColor: AppsColors.defaultTextColor,
        ),
        SizedBox(width: 16),
        // Next Button
        ModuleHeadingButton(
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
      width: 56,
      height: 56,
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
          size: 12,
          color: iconColor,
        ),
        onPressed: () {},
      ),
    );
  }
}
