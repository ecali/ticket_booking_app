import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:ticket_booking_app/utils/app_utils.dart';

class AppLayout{
  static getSize(BuildContext context){
    return MediaQuery.of(context).size;
  }
  static getScreenHeight(){
    return Get.height;
  }
  static getScreenWidth(){
    return Get.width;
  }
  static getHeight(double pixels){
    double x = getScreenHeight()/pixels;
    return getScreenHeight()/x;
  }
  static getWidth(double pixels){
    double x = getScreenWidth()/pixels;
    return getScreenWidth()/x;
  }
  static addGap(GapSize size){
    switch(size){
      case GapSize.mini :
        return Gap(getHeight(2));
      case GapSize.doubleMini :
        return Gap(getHeight(4));
      case GapSize.small :
        return Gap(getHeight(5));
      case GapSize.moreSmall :
        return Gap(getHeight(8));
      case GapSize.doubleSmall :
        return Gap(getHeight(10));
      case GapSize.lessMedium :
        return Gap(getHeight(12));
      case GapSize.medium :
        return Gap(getHeight(15));
      case GapSize.moreMedium :
        return Gap(getHeight(20));
      case GapSize.big :
        return Gap(getHeight(25));
      case GapSize.veryBig :
        return Gap(getHeight(40));
      default:
        return Gap(getHeight(1));
    }
  }
}