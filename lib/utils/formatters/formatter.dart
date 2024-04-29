

import 'package:intl/intl.dart';

class BFormatter {
  static String formatDatae(DateTime? data) {
    data ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(data);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)} ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)})';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)} ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)})';
    }
    return phoneNumber;
  }

  static String internationalFormatPhoneNumber(String phoneNumber) {
    //resove any non-digit characters from phone numbers
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), ' ');

    //Extract the country code from the digitonly
    String countryCode = '+${digitsOnly.substring(0, 2)}';

    //Add the remaining digits with proper formatting
    final formatednumber = StringBuffer();
    formatednumber.write('($countryCode)');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode == '+1') {
        groupLength = 3;
      }

      int end = i + groupLength;
      formatednumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formatednumber.write('');
      }
      i = end;
    }
    return '';
  }
}


