import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sqflites/Utils/Constatnts/Colors_Pages.dart';
import 'package:sqflites/Utils/Helpers/helper_Function.dart';
import 'package:sqflites/Utils/Sizes/sizes.dart';

class T_CircularIcon extends StatelessWidget {
  const T_CircularIcon({
    super.key,

    this.width,
    this.height,
    this.size = T_Sizes.lg,
    required this.icon,
    this.color,
    this.onpressed,
    this.backgroundcolor,
  });


  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundcolor;

  final VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: backgroundcolor != null
              ? backgroundcolor!
              :  T_HelpersFunction.isDarkmode(context)
                  ? T_ColorsPages.Black.withOpacity(0.9)
                  : T_ColorsPages.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(100)),
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: color,
            size: size,
          )),
    );
  }
}
