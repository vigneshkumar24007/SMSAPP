import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sqflites/Utils/Device/Device_Utility.dart';
import 'package:sqflites/Utils/Sizes/sizes.dart';

class T_Customappbar extends StatelessWidget implements PreferredSizeWidget {
  const T_Customappbar({
    super.key,
    this.tittle,
    this.showBackArrow = false,
    this.leadingIcon,
    this.actioins,
    this.leadingOnPressed,
  });

  final Widget? tittle;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actioins;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: T_Sizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(), icon: Icon(Iconsax.arrow_left))
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPressed, icon: Icon(leadingIcon))
                : null,
        title: tittle,
        actions: actioins,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(T_DeviceUtility.getAppBarHeight());
}
