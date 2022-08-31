import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/screens/hotel_screen.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';
import 'package:ticket_booking_app/utils/app_colors.dart';
import 'package:ticket_booking_app/utils/app_info_list.dart';
import 'package:ticket_booking_app/widgets/double_text_widget.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';
import '../utils/app_utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: ListView(
        children: [
           Container(
             padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                AppLayout.addGap(GapSize.veryBig),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good Morning', style: Styles.headlineStyle3),
                        AppLayout.addGap(GapSize.small),
                        Text('Book Tickets', style: Styles.headlineStyle),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/img_1.png')
                        )
                      ),
                    )
                  ],
                ),
                AppLayout.addGap(GapSize.big),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.whiteBlue
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular, color: AppColors.greenGrey),
                      Text('Search', style: Styles.headlineStyle4)
                    ],
                  ),
                ),
                AppLayout.addGap(GapSize.veryBig),
                const AppDoubleTextWidget(bigText: 'Upcoming flights', smallText: 'view all')
              ],
            ),
          ),
          AppLayout.addGap(GapSize.medium),
          SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           padding: const EdgeInsets.only(left: 20),
           child: Row(
             children: ticketList.map((ticket) => TicketView(ticket: ticket)).toList()
           ),
          ),
          AppLayout.addGap(GapSize.medium),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const AppDoubleTextWidget(bigText: 'Hotels', smallText: 'view all')

          ),
          AppLayout.addGap(GapSize.medium),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList()
              )
          ),
        ],
      ),
    );
  }
}
