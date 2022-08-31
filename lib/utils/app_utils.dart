import 'package:intl/intl.dart';

class AppUtils {
  static getDayDate(){
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('dd MMM yyyy');
    return formatter.format(now);
  }
}

