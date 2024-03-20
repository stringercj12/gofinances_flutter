import 'package:flutter/material.dart';
import 'package:gofinances/core/app_color.dart';
import 'package:gofinances/core/app_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({super.key});

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  final dataMap = <String, double>{
    "Flutter": 50,
    "React": 20,
    "Xamarin": 15,
    "Ionic": 15,
  };

  final legendLabels = <String, String>{
    "Flutter": "Flutter legend",
    "React": "React legend",
    "Xamarin": "Xamarin legend",
    "Ionic": "Ionic legend",
  };

  final colorList = <Color>[
    AppColors.purple,
    AppColors.orange,
    AppColors.green,
    AppColors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(152),
        child: Container(
          height: 114,
          color: AppColors.purple,
          child: Center(
            child: ListTile(
              title: Center(
                child: Text(
                  "Resumo por categoria",
                  style: AppFonts.title,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            const SizedBox(
              height: 32,
            ),
            ListTile(
              leading: InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Indo para esquerda',
                      ),
                    ),
                  );
                },
                child: const Icon(Icons.chevron_left),
              ),
              title: const Center(child: Text("maio, 2020")),
              trailing: InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Indo para direita',
                      ),
                    ),
                  );
                },
                child: const Icon(Icons.chevron_right),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Center(
              child: PieChart(
                dataMap: dataMap,
                chartType: ChartType.disc,
                colorList: colorList,
                legendOptions: const LegendOptions(
                  showLegends: false,
                ),
                chartValuesOptions: ChartValuesOptions(
                  showChartValueBackground: false,
                  showChartValues: true,
                  showChartValuesInPercentage: true,
                  showChartValuesOutside: false,
                  decimalPlaces: 0,
                  chartValueStyle: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.shape,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Column(
              children: dataMap.entries.map(
                (entry) {
                  debugPrint('${entry}');

                  final List<String> keys = dataMap.keys.toList();
                  int index = keys.indexOf(entry.key);

                  return Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 48,
                        decoration: BoxDecoration(
                          color: AppColors.shape,
                          border: Border(
                            left: BorderSide(
                              color: colorList[index],
                              width: 4.0,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                entry.key,
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.title,
                                ),
                              ),
                              Text(
                                "R\$ ${entry.value}",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.title,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  );
                },
              ).toList(),
            )
          ],
        ),
      ),
    );
  }
}
