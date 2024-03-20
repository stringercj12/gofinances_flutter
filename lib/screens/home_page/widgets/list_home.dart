import 'package:flutter/material.dart';
import 'package:gofinances/screens/home_page/widgets/card_widget.dart';
import 'package:gofinances/screens/login_page/login_page.dart';
import 'package:gofinances/core/app_color.dart';
import 'package:gofinances/core/app_fonts.dart';

class ListHomePage extends StatefulWidget {
  const ListHomePage({super.key});

  @override
  State<ListHomePage> createState() => _ListHomePageState();
}

class _ListHomePageState extends State<ListHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(280),
        child: Container(
          height: 280,
          color: AppColors.blue,
          child: Stack(
            children: [
              Container(
                height: 152,
                color: AppColors.blue,
                child: Center(
                  child: ListTile(
                    leading: Container(
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
                    title: Text(
                      "Olá, ",
                      style: AppFonts.title,
                    ),
                    subtitle: Text(
                      "Jefferson",
                      style: AppFonts.titleBold,
                    ),
                    trailing: InkWell(
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
                ),
              ),
              ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return CardWidget(
                    type: "entrances",
                    title: "Entradas",
                    money: "R\$ 17.400,00",
                    text: "Última entrada dia 13 de abril",
                  );
                },
              ),
              // Align(
              //   alignment: const Alignment(0.0, 2.0),
              //   child: ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     itemCount: 1,
              //     itemBuilder: (context, index) {
              //       return CardWidget(
              //         type: "entrances",
              //         title: "Entradas",
              //         money: "R\$ 17.400,00",
              //         text: "Última entrada dia 13 de abril",
              //       );
              //     },
              //     // children: [

              //     //   CardWidget(
              //     //     type: "exits",
              //     //     title: "Saídas",
              //     //     money: "R\$ 1.259,00",
              //     //     text: "Última saída dia 03 de abril",
              //     //   ),
              //     //   CardWidget(
              //     //     type: "total",
              //     //     title: "Total",
              //     //     money: "R\$ 16.141,00",
              //     //     text: "01 à 16 de abril",
              //     //   ),
              //     // ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
      body: Container(
        child: Text('Home'),
      ),
    );
  }
}
