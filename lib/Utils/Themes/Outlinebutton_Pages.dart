import 'package:flutter/material.dart';

class T_OutlinebuttonPages{

  T_OutlinebuttonPages._();

  static final Lightoutlinebutton = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: BorderSide( color: Colors.blue),
      textStyle: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600
      ),
      padding: EdgeInsets.symmetric(vertical: 16,horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),

    )
  );



  static final Darkoutlinebutton = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(

        foregroundColor: Colors.white,
        side: BorderSide( color: Colors.blueAccent),
        textStyle: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600
        ),
        padding: EdgeInsets.symmetric(vertical: 16,horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),

      )
  );
}