import 'package:flutter/cupertino.dart';
import 'package:sqflites/Utils/Constatnts/Colors_Pages.dart';

class T_ShadowStyles {
  static final VerticalproductShadow = BoxShadow(
      color: T_ColorsPages.Darkgrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: Offset(0, 2));
  static final HorizontalproductShadow = BoxShadow(
      color: T_ColorsPages.Darkgrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: Offset(0, 2));
}
