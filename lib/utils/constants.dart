import 'package:flutter/material.dart';
import 'package:travel_ui_landing_page/gen/assets.gen.dart';
import 'package:travel_ui_landing_page/models/models.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';

const navigation = [
  'Home',
  'About us',
  'Destinations',
  'Tours',
  'Blog',
];

final categories = [
  Catergory(
      title: 'Beach',
      image: Assets.categories.beach.path,
      middleText: 'Visite'),
  Catergory(title: 'Desert', image: Assets.categories.desert.path),
  Catergory(title: 'Mountain', image: Assets.categories.mountain.path),
  Catergory(title: 'Temple', image: Assets.categories.temple.path),
  Catergory(title: 'Tower', image: Assets.categories.tower.path),
  Catergory(title: 'Pyramid', image: Assets.categories.pyramid.path),
];

final destinations = [
  PopularDestination(
    title: 'Mountain Hiking Tour',
    description: 'Mountain Hiking Tour',
    price: 89,
    buttonBackgroundColor: AppsColors.defaultTextColor,
    buttonTextColor: Colors.white,
    image: Assets.popularDestinations.destination1.path,
  ),
  PopularDestination(
    title: 'Machu Picchu, Perur',
    description: 'Machu Picchu, Peru',
    price: 99,
    image: Assets.popularDestinations.destination2.path,
  ),
  PopularDestination(
    title: 'The Grand Canyon, Arizona',
    description: 'Mountain Hiking Tour',
    price: 79,
    image: Assets.popularDestinations.destination3.path,
  ),
  PopularDestination(
    title: 'Mountain Hiking Tour',
    description: 'Mountain Hiking Tour',
    price: 89,
    buttonBackgroundColor: AppsColors.defaultTextColor,
    buttonTextColor: Colors.white,
    image: Assets.popularDestinations.destination1.path,
  ),
];
