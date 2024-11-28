import 'package:flutter/material.dart';

class T_Chipthem {
  T_Chipthem._();

  static ChipThemeData LightchipThemeData = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: Colors.white,
  );
  static ChipThemeData DarkchipThemeData = ChipThemeData(
    disabledColor: Colors.grey ,
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: Colors.blue,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: Colors.white,
  );
}
