import 'package:flutter/material.dart';

class T_AppbarthemePages {
  T_AppbarthemePages._();

  static AppBarTheme lightbartheme = AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black, size: 24),
      surfaceTintColor: Colors.transparent,
      actionsIconTheme: IconThemeData(color: Colors.black, size: 24),
      titleTextStyle: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black));

  static AppBarTheme darktbartheme = AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black, size: 24),
      surfaceTintColor: Colors.transparent,
      actionsIconTheme: IconThemeData(color: Colors.white, size: 24),
      titleTextStyle: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white));
}
