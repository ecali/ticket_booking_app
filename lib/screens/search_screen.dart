import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/app_colors.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_style.dart';
import 'package:ticket_booking_app/utils/app_utils.dart';
import 'package:ticket_booking_app/widgets/ticket_tabs.dart';

import '../widgets/double_text_widget.dart';
import '../widgets/icon_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children: [
          AppLayout.addGap(GapSize.veryBig),
          Text('What are\n you looking for?', style: Styles.headlineStyle.copyWith(fontSize: AppLayout.getWidth(35))),
          AppLayout.addGap(GapSize.moreMedium),
          const AppTicketTabs(firstTab: 'Airline Tickets', secondTab: 'Hotels'),
          AppLayout.addGap(GapSize.big),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          AppLayout.addGap(GapSize.lessMedium),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          AppLayout.addGap(GapSize.big),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(18), horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
              color: AppColors.heavyBlue,
              borderRadius: BorderRadius.circular(AppLayout.getWidth(10))
            ),
            child: Center(child: Text('Find tickets', style: Styles.textStyle.copyWith(color: Colors.white)))
          ),
          AppLayout.addGap(GapSize.veryBig),
          const AppDoubleTextWidget(bigText: 'Upcoming flights', smallText: 'view all'),
          AppLayout.addGap(GapSize.medium),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(420),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15), vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    )
                  ]
                ) ,
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              'assets/images/sit.jpg'
                          )
                        )
                      ),
                    ),
                    AppLayout.addGap(GapSize.lessMedium),
                    Text('20% discount on there early booking of this flight. Don\'t miss.',
                    style: Styles.headlineStyle2,)
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(200),
                        decoration: BoxDecoration(
                          color: AppColors.aquaBlue,
                          borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                        ),
                        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getHeight(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Discount\nfor survery', style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white)),
                            AppLayout.addGap(GapSize.doubleSmall),
                            Text('Take the survery about our services and get discount', style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 18)),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(30)),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 18, color: AppColors.darkAquaBlue),
                            color: Colors.transparent
                        ),
                      )
                      )
                    ],
                  ),
                  AppLayout.addGap(GapSize.medium),
                  Container(
                    width: size.width * .44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getHeight(15)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                      color: AppColors.darkOrange,
                    ),
                    child: Column(
                      children: [
                        Text('Take love', style: Styles.headlineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                        AppLayout.addGap(GapSize.medium),
                        RichText(text: const TextSpan(
                          children: [
                            TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 38)
                            ),
                            TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: 50)
                            ),
                            TextSpan(
                                text: '😘',
                                style: TextStyle(fontSize: 38)
                            ),
                          ]
                        ),)

                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
