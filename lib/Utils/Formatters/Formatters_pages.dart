import 'package:intl/intl.dart';

class T_Formatter {
  static String formartDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MM-YYYY').format(date);
  }

  static String formatcurrency(double Amount) {
    return NumberFormat.currency(locale: 'IND', symbol: '\₹').format(Amount);
  }

  static String formatPhonenumber(String phoneNumber) {
    if (phoneNumber == 10) {
      return '${phoneNumber.substring(0, 3)} ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else {
      return phoneNumber;
    }
  }
}
