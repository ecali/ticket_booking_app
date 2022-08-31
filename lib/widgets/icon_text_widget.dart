import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/app_colors.dart';
import 'package:ticket_booking_app/utils/app_utils.dart';
import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(12), horizontal: AppLayout.getWidth(20)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10))
      ),
      child: Row(
        children: [
          Icon(icon, color: AppColors.lightGrey),
          AppLayout.addGap(GapSize.doubleSmall),
          Text(text, style: Styles.textStyle,)
        ],
      ),
    );
  }
}
