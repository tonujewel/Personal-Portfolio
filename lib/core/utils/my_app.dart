import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/utils/custom_theme.dart';
import 'package:personal_portfolio/features/dashboard/screen/dashboard_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jewel Rana',
      theme: CustomTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const DashboardScreen(),
    );
  }
}
