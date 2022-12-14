import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';
import 'package:ticket_booking_app/utils/app_colors.dart';
import 'package:ticket_booking_app/utils/app_info_list.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_style.dart';
import 'package:ticket_booking_app/utils/app_utils.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';
import 'package:ticket_booking_app/widgets/ticket_tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';
import '../widgets/layout_builder_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20),vertical: AppLayout.getHeight(20)),
            children: [
              AppLayout.addGap(GapSize.veryBig),
              Text('Tickets', style: Styles.headlineStyle,),
              AppLayout.addGap(GapSize.moreMedium),
              const AppTicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
              AppLayout.addGap(GapSize.moreMedium),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0], isColor: true),
              ),
              const SizedBox( height: 1 ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(firstText: user['name'] + ' ' +user['surname'], secondText: 'Passenger', alignment: CrossAxisAlignment.start, isColor: false),
                        AppColumnLayout(firstText: user['passport'], secondText: 'Passport', alignment: CrossAxisAlignment.end, isColor: false)
                      ],
                    ),
                    AppLayout.addGap(GapSize.moreMedium),
                    const AppLayoutBuilderWidget(sections: 15, isColor: false, width: 5),
                    AppLayout.addGap(GapSize.moreMedium),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(firstText: ticketList[0]['ticket_number'], secondText: 'Number of E-Ticket', alignment: CrossAxisAlignment.start, isColor: false),
                        AppColumnLayout(firstText: ticketList[0]['booking_code'], secondText: 'Booking code', alignment: CrossAxisAlignment.end, isColor: false)
                      ],
                    ),
                    AppLayout.addGap(GapSize.moreMedium),
                    const AppLayoutBuilderWidget(sections: 15, isColor: false, width: 5),
                    AppLayout.addGap(GapSize.moreMedium),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/${user['payment_method']}.png', scale: 11),
                                Text(' ***''${user['cart_number']}', style: Styles.headlineStyle3)
                              ],
                            ),
                            AppLayout.addGap(GapSize.small),
                            Text('Payment method', style: Styles.headlineStyle4,)
                          ],
                        ),
                        AppColumnLayout(firstText: '\$' '${ticketList[0]['price']}', secondText: 'Price', alignment: CrossAxisAlignment.end, isColor: false)
                      ],
                    ),
                  ],
                ),
              ),
              /*
              * BARCODE
              */
              const SizedBox( height: 1 ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(AppLayout.getHeight(21)),
                      bottomLeft: Radius.circular(AppLayout.getHeight(21)))
                ),
                margin: EdgeInsets.only(left: AppLayout.getHeight(15), right: AppLayout.getHeight(15)),
                padding: EdgeInsets.only(top: AppLayout.getHeight(20), bottom: AppLayout.getHeight(20)),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: ticketList[0]['ticket_number'],
                      drawText: false,
                      color: AppColors.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              AppLayout.addGap(GapSize.moreMedium),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0]),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(22),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.textColor, width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: AppColors.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(22),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.textColor, width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: AppColors.textColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
