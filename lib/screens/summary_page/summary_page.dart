import 'package:flutter/material.dart';
import 'package:gofinances/core/app_color.dart';
import 'package:gofinances/core/app_fonts.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({super.key});

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(152),
        child: Container(
          height: 114,
          color: AppColors.blue,
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
    );
  }
}
