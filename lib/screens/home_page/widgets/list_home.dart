import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:gofinances/Entradas.dart';
import 'package:gofinances/core/app_images.dart';
import 'package:gofinances/screens/home_page/widgets/card_widget.dart';
import 'package:gofinances/screens/login_page/login_page.dart';
import 'package:gofinances/core/app_color.dart';
import 'package:gofinances/core/app_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

class ListHomePage extends StatefulWidget {
  const ListHomePage({super.key});

  @override
  State<ListHomePage> createState() => _ListHomePageState();
}

class _ListHomePageState extends State<ListHomePage> {
  final List<Entradas> entradas = [
    Entradas(
      type: "entrances",
      title: "Entradas",
      money: "R\$ 17.400,00",
      text: "Última entrada dia 13 de abril",
    ),
    Entradas(
      type: "exits",
      title: "Saídas",
      money: "R\$ 1.259,00",
      text: "Última saída dia 03 de abril",
    ),
    Entradas(
      type: "total",
      title: "Total",
      money: "R\$ 16.141,00",
      text: "01 à 16 de abril",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(250),
        child: Container(
          color: AppColors.background,
          // height: 280,
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                width: double.maxFinite,
                height: 220,
                decoration: const BoxDecoration(
                  color: AppColors.purple,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              color: AppColors.text,
                              borderRadius: BorderRadius.circular(4),
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'https://avatars.githubusercontent.com/u/43593688?v=4',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Olá, ",
                                style: AppFonts.title,
                              ),
                              Text(
                                "Jefferson",
                                style: AppFonts.titleBold,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (builder) => const LoginPage(),
                            ),
                          );
                          debugPrint('Saindo');
                        },
                        child: const Icon(
                          Icons.power_settings_new,
                          color: AppColors.shape,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const Alignment(0, 1.2),
                child: SizedBox(
                  height: 150,
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    separatorBuilder: (_, __) => const SizedBox(width: 24),
                    scrollDirection: Axis.horizontal,
                    itemCount: entradas.length,
                    itemBuilder: (context, index) {
                      return CardWidget(
                        type: entradas[index].type,
                        title: entradas[index].title,
                        money: entradas[index].money,
                        text: entradas[index].text,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: AppColors.background,
        width: double.infinity,
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              'Listagem',
              style: AppFonts.titleCard.merge(
                const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 6,
                separatorBuilder: (_, __) => const SizedBox(height: 16),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.shape,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Desenvolvimento de site',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.text,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            '- R\$ 59,00',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: false ? AppColors.green : AppColors.red,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: Image.asset(AppImages.iconCoffee),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'Alimentação',
                                    style: AppFonts.text.merge(
                                      const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '10/04/2024',
                                style: AppFonts.text.merge(
                                  const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
