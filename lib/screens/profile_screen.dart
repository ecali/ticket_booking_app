import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/app_info_list.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_style.dart';
import 'package:ticket_booking_app/utils/app_utils.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';
import 'package:ticket_booking_app/widgets/layout_builder_widget.dart';
import '../utils/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> userData = user;

    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getHeight(20)),
        children: [
          AppLayout.addGap(GapSize.veryBig),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/img_1.png')
                  )
                ),
              ),
              AppLayout.addGap(GapSize.doubleSmall),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Book Tickets', style: Styles.headlineStyle),
                  AppLayout.addGap(GapSize.mini),
                  Text(userData['city'], style:  TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500
                  ),),
                  AppLayout.addGap(GapSize.moreSmall),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                      color: AppColors.likeWhite
                    ),
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(3), vertical: AppLayout.getHeight(3)),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.naviBlue
                          ),
                          child: const Icon(FluentSystemIcons.ic_fluent_shield_filled, color: Colors.white, size: 15),
                        ),
                        AppLayout.addGap(GapSize.small),
                        Text(userData['premium'] ? 'Premium status' : 'Becomes Premium', style: TextStyle(
                          color: AppColors.naviBlue, fontWeight: FontWeight.w600
                        )),
                        AppLayout.addGap(GapSize.small),
                      ],
                    )
                  )
                ],
              ),
              const Spacer(),
              Column(

                children: [
                  InkWell(
                    onTap: (){ print('You are tapped');},
                      child: Text('Edit', style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w300),)
                  )
                ],
              )
            ],
          ),
          AppLayout.addGap(GapSize.moreSmall),
          Divider(color: Colors.grey.shade300),
          AppLayout.addGap(GapSize.moreSmall),
          if(userData['reward']['active'])
            Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(30)),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(width: 18, color: AppColors.intenseBlue)
                    ),
                  )
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(25), vertical: AppLayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled, color: Styles.primaryColor, size: 27),
                    ),
                    AppLayout.addGap(GapSize.lessMedium),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('You\'v got a new award',
                            style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white)),
                        Text('You have ${userData['reward']['flight']} flights in a year',
                            style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.w500,
                                color: Colors.white.withOpacity(0.9), fontSize: 16))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          AppLayout.addGap(GapSize.big),
          Text('Accumulated miles', style: Styles.headlineStyle2),
          AppLayout.addGap(GapSize.moreMedium),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
              color: AppColors.bgColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 1,
                  spreadRadius: 1
                )
              ]
            ),
            child: Column(
              children: [
                AppLayout.addGap(GapSize.medium),
                Text(userData['total_miles'].toString(), style: TextStyle(
                  fontSize: 45, color: AppColors.textColor, fontWeight: FontWeight.w600
                )),
                AppLayout.addGap(GapSize.moreMedium),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Miles accrued', style: Styles.headlineStyle4.copyWith(fontSize: 16)),
                    Text(AppUtils.getDayDate(), style: Styles.headlineStyle4.copyWith(fontSize: 16))
                  ],
                ),
                AppLayout.addGap(GapSize.doubleMini),
                Divider(color: Colors.grey.shade300),
                AppLayout.addGap(GapSize.doubleMini),
                Column(
                  children: userData['last_miles'].map<Widget>((milesData){
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppColumnLayout(
                                firstText: milesData['miles'],
                                secondText: 'Miles',
                                alignment: CrossAxisAlignment.start,
                                isColor: false),
                            AppColumnLayout(
                                firstText: milesData['from'],
                                secondText: 'Received from',
                                alignment: CrossAxisAlignment.end,
                                isColor: false),
                          ],
                        ),
                        AppLayout.addGap(GapSize.lessMedium),
                        const AppLayoutBuilderWidget(sections: 12, isColor: true),
                        AppLayout.addGap(GapSize.lessMedium),
                      ],
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          AppLayout.addGap(GapSize.big),
          InkWell(
            onTap: () => print('You are tapped'),
            child: Center(
                child: Text(
                    'How to get more miles',
                    style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w500)
                )
            ),
          )

        ],
      ),
    );
  }
}
