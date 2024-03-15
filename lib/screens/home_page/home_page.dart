import 'package:flutter/material.dart';
import 'package:gofinances/core/app_fonts.dart';
import 'package:gofinances/screens/home_page/widgets/card_widget.dart';
import 'package:gofinances/screens/home_page/widgets/list_home.dart';
import 'package:gofinances/screens/login_page/login_page.dart';
import 'package:gofinances/screens/register_page/register_page.dart';
import 'package:gofinances/screens/summary_page/summary_page.dart';
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
        color: AppColors.background,
        child: Column(
          children: [
            ListHomePage(),
            // Expanded(
            //   child: PageView(
            //     controller: pageController,
            //     onPageChanged: (value) {
            //       setState(() {
            //         posicaoPagina = value;
            //       });
            //     },
            //     children: const [
            //       ListHomePage(),
            //       RegisterPage(),
            //       SummaryPage(),
            //     ],
            //   ),
            // ),
            // BottomNavigationBar(
            //   type: BottomNavigationBarType.fixed,
            //   onTap: (value) {
            //     pageController.jumpToPage(value);
            //   },
            //   currentIndex: posicaoPagina,
            //   items: const [
            //     BottomNavigationBarItem(
            //       icon: Icon(Icons.home),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
      // bottomNavigationBar: Container(
      //   height: 72,
      //   decoration: const BoxDecoration(
      //     color: AppColors.shape,
      //     boxShadow: [
      //       BoxShadow(
      //         blurRadius: 4,
      //         color: AppColors.text,
      //         offset: Offset(
      //           1.0,
      //           9.0,
      //         ),
      //         spreadRadius: 8,
      //       )
      //     ],
      //   ),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       InkWell(
      //         onTap: () {
      //           setState(() {
      //             posicaoPagina = 0;
      //             pageController.jumpToPage(0);
      //             debugPrint('tap on close => ${posicaoPagina}');
      //           });
      //         },
      //         child: Padding(
      //           padding: const EdgeInsets.only(top: 8.0),
      //           child: Row(
      //             children: <Widget>[
      //               Icon(
      //                 Icons.format_list_bulleted,
      //                 color: posicaoPagina == 0
      //                     ? AppColors.orange
      //                     : AppColors.text,
      //               ),
      //               const SizedBox(width: 10),
      //               Text(
      //                 'Listagem',
      //                 style: AppFonts.textTabBar.merge(
      //                   TextStyle(
      //                     color: posicaoPagina == 0
      //                         ? AppColors.orange
      //                         : AppColors.text,
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //       InkWell(
      //         onTap: () {
      //           setState(() {
      //             posicaoPagina = 1;
      //             pageController.jumpToPage(1);
      //             debugPrint('tap on close => ${posicaoPagina}');
      //           });
      //         },
      //         child: Padding(
      //           padding: const EdgeInsets.only(top: 8.0),
      //           child: Row(
      //             children: <Widget>[
      //               Icon(
      //                 Icons.wallet,
      //                 color: posicaoPagina == 1
      //                     ? AppColors.orange
      //                     : AppColors.text,
      //               ),
      //               const SizedBox(width: 10),
      //               Text(
      //                 'Cadastrar',
      //                 style: AppFonts.textTabBar.merge(
      //                   TextStyle(
      //                     color: posicaoPagina == 1
      //                         ? AppColors.orange
      //                         : AppColors.text,
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //       InkWell(
      //         onTap: () {
      //           setState(() {
      //             posicaoPagina = 2;
      //             pageController.jumpToPage(2);
      //             debugPrint('tap on close => ${posicaoPagina}');
      //           });
      //         },
      //         child: Padding(
      //           padding: const EdgeInsets.only(top: 8.0),
      //           child: Row(
      //             children: <Widget>[
      //               Icon(
      //                 Icons.pie_chart_outline,
      //                 color: posicaoPagina == 2
      //                     ? AppColors.orange
      //                     : AppColors.text,
      //               ),
      //               const SizedBox(width: 10),
      //               Text(
      //                 'Resumo',
      //                 style: AppFonts.textTabBar.merge(
      //                   TextStyle(
      //                     color: posicaoPagina == 2
      //                         ? AppColors.orange
      //                         : AppColors.text,
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
