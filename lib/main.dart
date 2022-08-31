import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screens/bottom_bar.dart';
import 'package:ticket_booking_app/utils/app_colors.dart';
import 'package:ticket_booking_app/utils/app_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      home: const BottomBar(),
    );
  }
}
