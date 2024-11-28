import 'package:flutter/material.dart';
import 'package:sqflites/Screens/Home/Main_Screen.dart';
import 'package:sqflites/Utils/Constatnts/Colors_Pages.dart';

import 'T_CurveWidgets_Common.dart';

class T_primaryheadercontainer extends StatelessWidget {
  const T_primaryheadercontainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return T_Curvewidgets(
      child: Container(
        color: T_ColorsPages.primarycolor,
        padding: EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: T_RoundContainer(
                  backgroundcolors: T_ColorsPages.textwhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: T_RoundContainer(
                  backgroundcolors: T_ColorsPages.textwhite.withOpacity(0.1),
                ),
              ),
              // Ensure the `child` is positioned correctly
              Positioned.fill(
                child: child,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
