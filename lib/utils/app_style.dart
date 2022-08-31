import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/app_colors.dart';

Color primary = const Color(0xFF687daf);
class Styles {
  static Color primaryColor = primary;
  /*static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color orangeColor = const Color(0xFFF37B67);
  static Color kakiColor = const Color(0xFFd2bdb6);*/
  static TextStyle textStyle = TextStyle(fontSize: 16, color: AppColors.textColor, fontWeight: FontWeight.w500);
  static TextStyle headlineStyle = TextStyle(fontSize: 26, color: AppColors.textColor, fontWeight: FontWeight.bold);
  static TextStyle headlineStyle2 = TextStyle(fontSize: 21, color: AppColors.textColor, fontWeight: FontWeight.bold);
  static TextStyle headlineStyle3 = const TextStyle(fontSize: 17, fontWeight: FontWeight.w500);
  static TextStyle headlineStyle4 = TextStyle(fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}