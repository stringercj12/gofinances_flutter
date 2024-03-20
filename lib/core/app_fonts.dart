import 'package:flutter/material.dart';
import 'package:gofinances/core/app_color.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static final title = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColors.shape,
  );
  static final titleBold = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.background,
  );
  static final textTabBar = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.text,
  );
  static final titleCard = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.title,
  );
  static final textMoney = GoogleFonts.poppins(
    fontSize: 32,
    fontWeight: FontWeight.w400,
    color: AppColors.title,
  );
  static final textCardMoney = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColors.green,
  );
  static final text = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.text,
  );
}
