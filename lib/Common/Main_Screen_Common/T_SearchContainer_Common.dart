import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sqflites/Utils/Constatnts/Colors_Pages.dart';
import 'package:sqflites/Utils/Device/Device_Utility.dart';
import 'package:sqflites/Utils/Helpers/helper_Function.dart';
import 'package:sqflites/Utils/Sizes/sizes.dart';

class T_SearchContainer extends StatelessWidget {
  const T_SearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showbackground = true,
    this.showborder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: T_Sizes.defaultspace),
  });

  final String text;
  final IconData? icon;
  final bool showbackground, showborder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = T_HelpersFunction.isDarkmode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: T_DeviceUtility.Getscreenweight(context),
          padding: EdgeInsets.all(T_Sizes.md),
          decoration: BoxDecoration(
            color: showbackground
                ? dark
                    ? T_ColorsPages.dark
                    : T_ColorsPages.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(T_Sizes.CardRadiuslg),
            border: showborder ? Border.all(color: T_ColorsPages.grey) : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: dark ? T_ColorsPages.Darkgrey : T_ColorsPages.grey,
              ),
              SizedBox(
                width: T_Sizes.spacebtwitems,
              ),
              Text(text, style: Theme.of(context).textTheme.bodySmall)
            ],
          ),
        ),
      ),
    );
  }
}
