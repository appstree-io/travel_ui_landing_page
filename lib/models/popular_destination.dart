// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/painting.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';

class PopularDestination {
  const PopularDestination({
    required this.title,
    required this.description,
    required this.price,
    this.buttonBackgroundColor = AppsColors.backgroundColor,
    this.buttonTextColor = AppsColors.defaultTextColor,
    required this.image,
  });

  final String title;
  final String description;
  final int price;
  final Color buttonBackgroundColor;
  final Color buttonTextColor;
  final String image;
}
