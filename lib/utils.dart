
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Utils {
  static formatPrice(double price) => '\$ ${price.toStringAsFixed(2)}';
  static formatSpace(double price) => price.toStringAsFixed(2);
  static formatDate(DateTime date) => DateFormat.yMd().format(date);

  static String formatDateStrToStr(String stringDate) {
    DateTime Date = DateFormat('yyyy-MM-dd').parse(stringDate);
    String formattedDate = DateFormat('dd.MM.yyyy').format(Date);
    return formattedDate;
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}


