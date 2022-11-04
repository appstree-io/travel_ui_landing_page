import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:travel_ui_landing_page/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel UI Landing Page',
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        debugLog: true,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.autoScaleDown(600, name: MOBILE),
          const ResponsiveBreakpoint.autoScaleDown(800, name: TABLET),
          const ResponsiveBreakpoint.autoScaleDown(1440, name: DESKTOP),
        ],
      ),
      home: const HomePage(),
    );
  }
}
