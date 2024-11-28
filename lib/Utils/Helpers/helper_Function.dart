import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class T_HelpersFunction {
  static Color? getcolor(String value) {
    if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == ' Pink') {
      return Colors.pink;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Purple') {
      return Colors.purple;
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'White') {
      return Colors.white;
    } else if (value == 'Brown') {
      return Colors.brown;
    } else if (value == ' Teal') {
      return Colors.teal;
    } else if (value == 'Indigo') {
      return Colors.indigo;
    }
  }

  static void showsnackbar(String messege) {
    ScaffoldMessenger.of(Get.context!)
        .showSnackBar(SnackBar(content: Text(messege)));
  }

  static void showAlert(String title, String messege) {
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(messege),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(context).pop(), child: Text('OK'))
          ],
        );
      },
    );
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }

  static String truncateText(String text, int maxlength) {
    if (text.length <= maxlength) {
      return text;
    } else {
      return '${text.substring(0, maxlength)}';
    }
  }

  static bool isDarkmode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size Screensize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double ScreenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double ScreenWeight() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static String getFormattedDate(DateTime date,
      {String format = 'dd MM YYYY'}) {
    return DateFormat(format).format(date);
  }

  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  static List<Widget> WrapWidgets(List<Widget> widgets, int rowsize) {
    final wrappedlist = <Widget>[];
    for (var i = 0; i < widgets.length; i + rowsize) {
      final rowchildern = widgets.sublist(
          i, i + rowsize > widgets.length ? widgets.length : i + rowsize);
      wrappedlist.add(Row(
        children: rowchildern,
      ));
    }
    return wrappedlist;
  }
}
