import 'package:flutter/material.dart';
import 'package:gofinances/core/app_color.dart';
import 'package:gofinances/screens/home_page/home_page.dart';
import 'package:gofinances/screens/login_page/login_page.dart';
import 'package:gofinances/screens/register_page/register_page.dart';
import 'package:gofinances/screens/summary_page/summary_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      color: AppColors.background,
      home: const SummaryPage(),
    );
  }
}
