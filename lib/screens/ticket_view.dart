import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_style.dart';

import '../utils/app_latout.dart';
import '../widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /*
            showing the blue part of the card/ticket
            */
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('NYC', style: Styles.headlineStyle3.copyWith(color: Colors.white)),
                      const Spacer(),
                      ThickContainer(),
                      Expanded(child: Stack(
                        children : [
                        SizedBox(
                          height: 24,
                          child: LayoutBuilder(
                            builder: (BuildContext context, BoxConstraints constraints) {
                              return  Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate((constraints.constrainWidth() / 6).floor(), (index) => SizedBox(
                                  width: 3, height: 1, child: DecoratedBox(decoration: BoxDecoration(
                                    color: Colors.white
                                ),),
                                )),
                              );
                            },

                          ),
                        ),
                        Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: Colors.white))),
                        ]
                      )),
                      ThickContainer(),
                      const Spacer(),
                      Text('LDN', style: Styles.headlineStyle3.copyWith(color: Colors.white))
                    ],
                  ),
                  const Gap(1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100, child: Text('New-York', style: Styles.headlineStyle4.copyWith(color: Colors.white)),
                      ),
                      Text('8H 30M', style: Styles.headlineStyle4.copyWith(color: Colors.white)),
                      SizedBox(
                        width: 100, child: Text('London', textAlign: TextAlign.end , style: Styles.headlineStyle4.copyWith(color: Colors.white)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /*
            showing the orange part of the card/ticket
            */
            Container(
              
            )
          ],
        ),
      ),
    );
  }
}
