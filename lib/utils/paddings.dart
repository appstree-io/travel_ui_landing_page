// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        horizontal: 135,
        vertical: vertical,
      ).r,
      child: child,
    );
  }
}
