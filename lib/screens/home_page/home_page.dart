import 'package:flutter/material.dart';
import 'package:gofinances/screens/home_page/widgets/list_home.dart';
import 'package:gofinances/core/app_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController(initialPage: 0);
  int posicaoPagina = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.green,
        child: const ListHomePage(),
      ),
    );
  }
}
