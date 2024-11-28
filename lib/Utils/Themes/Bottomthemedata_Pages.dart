import 'package:flutter/material.dart';

class T_BottomthemedataPages{
   T_BottomthemedataPages._();

   static BottomSheetThemeData lightbottomSheetThemeData = BottomSheetThemeData(
     showDragHandle: true,
     backgroundColor:  Colors.white,
     modalBackgroundColor: Colors.white,
     constraints: BoxConstraints(minWidth: double.infinity),
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
   );
   static BottomSheetThemeData darkbottomSheetThemeData = BottomSheetThemeData(  showDragHandle: true,
       backgroundColor:  Colors.black,
       modalBackgroundColor: Colors.black,
       constraints: BoxConstraints(minWidth: double.infinity),
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)));
}