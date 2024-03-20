import 'package:flutter/material.dart';
import 'package:gofinances/core/app_images.dart';
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
              Expanded(
                flex: 1,
                child: Container(
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
              ),
              Expanded(
                child: Align(
                  alignment: const Alignment(0.0, -2.0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return CardWidget(
                        type: "entrances",
                        title: "Entradas",
                        money: "R\$ 17.400,00",
                        text: "Última entrada dia 13 de abril",
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
          children: [
            const Text('Listagem'),
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
                            style: AppFonts.titleCard.merge(
                              const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            '- R\$ 59,00',
                            style: AppFonts.textCardMoney,
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
            )
          ],
        ),
      ),
    );
  }
}
