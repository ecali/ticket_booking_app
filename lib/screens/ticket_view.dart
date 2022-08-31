import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_style.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';
import 'package:ticket_booking_app/widgets/layout_builder_widget.dart';

import '../utils/app_colors.dart';
import '../utils/app_layout.dart';
import '../widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(167),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /* showing the blue part of the card/ticket */
            Container(
              decoration:  BoxDecoration(
                color: isColor == null ? AppColors.naviBlue : Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(21)), topRight: Radius.circular(AppLayout.getHeight(21)))
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('${ticket['from']['code']}', style: isColor == null ?  Styles.headlineStyle3.copyWith(color: Colors.white) : Styles.headlineStyle3),
                      const Spacer(),
                      const ThickContainer(isColor: true),
                      Expanded(child: Stack(
                        children : [
                        SizedBox(
                          height: AppLayout.getHeight(24),
                          child: const AppLayoutBuilderWidget(sections: 6)
                        ),
                        Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: isColor == null ? Colors.white : AppColors.lightBlue))),
                        ]
                      )),
                      const ThickContainer(isColor: true),
                      const Spacer(),
                      Text('${ticket['to']['code']}', style: isColor == null ?  Styles.headlineStyle3.copyWith(color: Colors.white) : Styles.headlineStyle3)
                    ],
                  ),
                  const Gap(1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100), child: Text('${ticket['from']['name']}', style: isColor == null ? Styles.headlineStyle4.copyWith(color: Colors.white) : Styles.headlineStyle4),
                      ),
                      Text('${ticket['flying_time']}', style: isColor == null ? Styles.headlineStyle4.copyWith(color: Colors.white) : Styles.headlineStyle4),
                      SizedBox(
                        width: AppLayout.getWidth(100), child: Text('${ticket['to']['name']}', textAlign: TextAlign.end , style: isColor == null ? Styles.headlineStyle4.copyWith(color: Colors.white) : Styles.headlineStyle4),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /* showing the orange part of the card/ticket */
            Container(
              color: isColor == null ? AppColors.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getWidth(10)),
                          bottomRight: Radius.circular(AppLayout.getWidth(10))
                        )
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: EdgeInsets.all(AppLayout.getWidth(12)),
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                            width: AppLayout.getWidth(5), height: AppLayout.getHeight(1),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: isColor == null ? Colors.white : Colors.grey.shade300
                              ),
                            ),
                          )),
                        );
                      },
                    ),
                  )),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(AppLayout.getWidth(10)),
                              bottomLeft: Radius.circular(AppLayout.getWidth(10))
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
            /* Bottom part of the orange card/ticket */
            Container(
              decoration: BoxDecoration(
                  color: isColor == null ? AppColors.orangeColor : Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(AppLayout.getWidth(isColor == null ? 21 : 0)), bottomRight: Radius.circular(AppLayout.getWidth(isColor == null ? 21 : 0)))
              ),
              padding: EdgeInsets.only(left: AppLayout.getWidth(16), top: AppLayout.getWidth(10), right: AppLayout.getWidth(16), bottom: AppLayout.getWidth(16)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(firstText: ticket['date'], secondText: 'Date', alignment: CrossAxisAlignment.start, isColor: isColor,),
                      AppColumnLayout(firstText: ticket['departure_time'], secondText: 'Departure time', alignment: CrossAxisAlignment.center, isColor: isColor ),
                      AppColumnLayout(firstText: ticket['number'].toString(), secondText: 'Number', alignment: CrossAxisAlignment.end, isColor: isColor ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
