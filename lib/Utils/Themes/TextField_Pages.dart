import 'package:flutter/material.dart';

class T_TextfieldPages {
  T_TextfieldPages._();

  static InputDecorationTheme lightinputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: TextStyle().copyWith(fontSize: 14, color: Colors.black),
    hintStyle: TextStyle().copyWith(fontSize: 14, color: Colors.black),
    errorStyle: TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
    border: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
    ),
    enabledBorder: OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(width: 1, color: Colors.grey)),
    focusedBorder: OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(width: 1, color: Colors.black12)),
    errorBorder: OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(width: 1, color: Colors.red)),
    focusedErrorBorder: OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(width: 2, color: Colors.orange)),
  );
  static InputDecorationTheme DarkinputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: TextStyle().copyWith(fontSize: 14, color: Colors.white),
    hintStyle: TextStyle().copyWith(fontSize: 14, color: Colors.white),
    floatingLabelStyle:
        TextStyle().copyWith(color: Colors.white.withOpacity(0.8)),
    border: OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(width: 1, color: Colors.grey)),
    enabledBorder: OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(width: 1, color: Colors.grey)),
    focusedBorder: OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(width: 1, color: Colors.white)),
    errorBorder: OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(width: 1, color: Colors.red)),
    focusedErrorBorder: OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(width: 2, color: Colors.orange)),
  );
}
