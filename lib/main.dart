import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_ui_landing_page/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(1440, 720),
      builder: (context, child) => const MaterialApp(
        title: 'Travel UI Landing Page',
        // theme: ThemeData(),
        home: HomePage(),
      ),
    );
  }
}
