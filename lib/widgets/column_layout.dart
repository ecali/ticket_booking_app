import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/app_utils.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  final bool? isColor;
  const AppColumnLayout({Key? key, required this.firstText, required this.secondText, required this.alignment, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText, style: isColor == null ?  Styles.headlineStyle3.copyWith(color: Colors.white) : Styles.headlineStyle3),
        AppLayout.addGap(GapSize.small),
        Text(secondText, style: isColor == null ?  Styles.headlineStyle4.copyWith(color: Colors.white) : Styles.headlineStyle4),
      ],
    );
  }
}
