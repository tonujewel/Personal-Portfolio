import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/custom_theme.dart';
import 'package:personal_portfolio/features/dashboard_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const DashboardScreen(),
    );
  }
}
