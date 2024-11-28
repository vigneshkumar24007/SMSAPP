import 'package:flutter/material.dart';

class Televaedthemdata {
  Televaedthemdata._();

  static ElevatedButtonThemeData lightelevatedButtonThemeData =
      ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              disabledForegroundColor: Colors.grey,
              disabledBackgroundColor: Colors.grey,
              side: BorderSide(color: Colors.blue),
              padding: EdgeInsets.symmetric(vertical: 18),
              textStyle: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              )));
  static ElevatedButtonThemeData darklevatedButtonThemeData =
      ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              disabledForegroundColor: Colors.grey,
              disabledBackgroundColor: Colors.grey,
              side: BorderSide(color: Colors.blue),
              padding: EdgeInsets.symmetric(vertical: 18),
              textStyle: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              )));
}
