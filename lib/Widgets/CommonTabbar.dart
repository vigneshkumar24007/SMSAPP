import 'package:flutter/material.dart';
import 'package:sqflites/Utils/Constatnts/Colors_Pages.dart';
import 'package:sqflites/Utils/Device/Device_Utility.dart';
import 'package:sqflites/Utils/Helpers/helper_Function.dart';

class T_TabBar extends StatelessWidget implements PreferredSizeWidget {
  const T_TabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = T_HelpersFunction.isDarkmode(context);
    return Material(
      color: dark ? T_ColorsPages.Black : T_ColorsPages.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: T_ColorsPages.primarycolor,
        labelColor: dark ? T_ColorsPages.white : T_ColorsPages.primarycolor,
        unselectedLabelColor: T_ColorsPages.Darkgrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(T_DeviceUtility.getAppBarHeight());
}
