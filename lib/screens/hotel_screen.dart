import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_latout.dart';
import 'package:ticket_booking_app/utils/app_style.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 1
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: const DecorationImage(
                fit:  BoxFit.cover,
                image: AssetImage(
                'assets/images/one.png'
              ))
            ),
          ),
          const Gap(10),
          Text('Open Space', style: Styles.headlineStyle2.copyWith(color: Styles.kakiColor)),
          const Gap(10),
          Text('London', style: Styles.headlineStyle3.copyWith(color: Colors.white)),
          const Gap(10),
          Text('\$40/night', style: Styles.headlineStyle3.copyWith(color: Styles.kakiColor)),
        ],
      ),
    );
  }
}
