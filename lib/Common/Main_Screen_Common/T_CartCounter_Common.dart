import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../Utils/Constatnts/Colors_Pages.dart';

class T_AppBar_ICon extends StatelessWidget {
  const T_AppBar_ICon({
    super.key,
    required this.onpressed,
     this.IconColors,
  });
  final VoidCallback onpressed;
  final Color? IconColors;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: onpressed,
            icon: Icon(
              Iconsax.shopping_bag,
              color: IconColors,
            )),
        Positioned(
            right: 0,
            child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: T_ColorsPages.Black),
              child: Center(
                child: Text(
                  '2',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: T_ColorsPages.white, fontSizeFactor: 0.8),
                ),
              ),
            ))
      ],
    );
  }
}