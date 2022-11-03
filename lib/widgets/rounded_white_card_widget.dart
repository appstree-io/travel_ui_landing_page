import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const _defaultPadding = EdgeInsets.symmetric(horizontal: 14, vertical: 20);

class RoundedWhiteCardWidget extends StatelessWidget {
  const RoundedWhiteCardWidget({
    Key? key,
    required this.child,
    required this.width,
    required this.height,
    this.padding = _defaultPadding,
  }) : super(key: key);

  final Widget child;
  final double width, height;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding.r,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: child,
    );
  }
}
