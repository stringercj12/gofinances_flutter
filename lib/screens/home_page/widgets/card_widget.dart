import 'package:flutter/material.dart';
import 'package:gofinances/core/app_color.dart';
import 'package:gofinances/core/app_fonts.dart';

class CardWidget extends StatelessWidget {
  final String type;
  final String title;
  final String text;
  final String money;
  CardWidget({
    required this.type,
    required this.title,
    required this.text,
    required this.money,
    super.key,
  }) : assert(["entrances", "exits", "total"].contains(type));

  final config = {
    "entrances": {
      "colorTitle": AppColors.title,
      "colorText": AppColors.text,
      "colorIcon": AppColors.green,
      "background": AppColors.shape,
      "icon": Icons.arrow_circle_up,
    },
    "exits": {
      "colorTitle": AppColors.title,
      "colorText": AppColors.text,
      "colorIcon": AppColors.red,
      "background": AppColors.shape,
      "icon": Icons.arrow_circle_down,
    },
    "total": {
      "colorTitle": AppColors.shape,
      "colorText": AppColors.shape,
      "colorIcon": AppColors.shape,
      "background": AppColors.orange,
      "icon": Icons.attach_money_sharp,
    },
  };

  Color get colorTitle => (config[type]!['colorTitle']! as Color);
  Color get colorText => (config[type]!['colorText']! as Color);
  Color get colorIcon => (config[type]!['colorIcon']! as Color);
  Color get background => (config[type]!['background']! as Color);
  IconData get icon => (config[type]!['icon'] as IconData);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 100,
      child: Card(
        elevation: 2,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.green,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                blurRadius: 1.0,
                color: background,
                spreadRadius: 1.0,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: AppFonts.titleCard.merge(
                        TextStyle(color: colorTitle),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: Icon(
                        icon,
                        color: colorIcon,
                        size: 40,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 34,
                ),
                Text(
                  money,
                  style: AppFonts.textMoney.merge(
                    TextStyle(color: colorTitle),
                  ),
                ),
                Text(
                  text,
                  style: AppFonts.text.merge(
                    TextStyle(color: colorTitle),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
