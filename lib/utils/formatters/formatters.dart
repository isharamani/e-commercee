import 'package:intl/intl.dart';

class TFormatters {
  static String formDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat("dd-MMM-yyyy").format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: "en_us", symbol: "\$").format(amount);
  }

  static String formatPhoneNumber(String phonenumber) {
    if (phonenumber.length == 10) {
      return "(${phonenumber.substring(0, 3)}) ${phonenumber.substring(3, 6)} ${phonenumber.substring(6)}";
    } else if (phonenumber.length == 11) {
      return "(${phonenumber.substring(0, 4)}) ${phonenumber.substring(4, 7)} ${phonenumber.substring(7)}";
    }
    return phonenumber;
  }

  static String internationalFormatPhoneNumber(String phonenumber) {
    var digitsOnly = phonenumber.replaceAll(RegExp(r'\D'), "");

    String countryCode = "+${digitsOnly.substring(0, 2)}";
    digitsOnly = digitsOnly.substring(2);

    final forattedNumber = StringBuffer();
    forattedNumber.write("($countryCode)");

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode == "+1") {
        groupLength = 3;
      }

      int end = i + groupLength;
      forattedNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        forattedNumber.write(" ");
      }
      i = end;
    }
    throw Exception();
  }
}
