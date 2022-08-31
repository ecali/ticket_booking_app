import 'package:intl/intl.dart';

class AppUtils {
  static getDayDate(){
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('dd MMM yyyy');
    return formatter.format(now);
  }

}
enum GapSize {
  mini, // 2
  doubleMini, // 4
  small, // 5
  moreSmall, // 8
  doubleSmall, // 10
  lessMedium, // 12
  medium, // 15
  moreMedium, // 20
  big, // 25
  veryBig, // 40
  one, // 1
}

