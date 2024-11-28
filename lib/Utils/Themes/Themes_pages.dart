import 'package:flutter/material.dart';
import 'package:sqflites/Utils/Themes/Appbartheme_Pages.dart';
import 'package:sqflites/Utils/Themes/Bottomthemedata_Pages.dart';
import 'package:sqflites/Utils/Themes/CheckBoxTheme_Pages.dart';
import 'package:sqflites/Utils/Themes/ChipTheme_Pages.dart';
import 'package:sqflites/Utils/Themes/Elevatedthemdata_pages.dart';
import 'package:sqflites/Utils/Themes/Outlinebutton_Pages.dart';
import 'package:sqflites/Utils/Themes/TextField_Pages.dart';
import 'package:sqflites/Utils/Themes/TextTheme_pages.dart';

class T_ThemesPages {
  T_ThemesPages._();

  static ThemeData Lightheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: T_TextthemePages.lightTheme,
    chipTheme: T_Chipthem.LightchipThemeData,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: T_AppbarthemePages.lightbartheme,
    checkboxTheme: T_CheckBoxtheme.lightcheckbox,
    bottomSheetTheme: T_BottomthemedataPages.lightbottomSheetThemeData,
    inputDecorationTheme: T_TextfieldPages.lightinputDecorationTheme,
    outlinedButtonTheme: T_OutlinebuttonPages.Lightoutlinebutton,
    elevatedButtonTheme: Televaedthemdata.lightelevatedButtonThemeData,
  );

  static ThemeData darktheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: T_TextthemePages.darkTheme,
    chipTheme: T_Chipthem.DarkchipThemeData,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: T_AppbarthemePages.darktbartheme,
    checkboxTheme: T_CheckBoxtheme.Darkcheckbox,
    bottomSheetTheme: T_BottomthemedataPages.darkbottomSheetThemeData,
    inputDecorationTheme: T_TextfieldPages.DarkinputDecorationTheme,
    outlinedButtonTheme: T_OutlinebuttonPages.Darkoutlinebutton,
    elevatedButtonTheme: Televaedthemdata.darklevatedButtonThemeData,
  );
}
