import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utils/Constatnts/Colors_Pages.dart';
import '../../Widgets/CustomAppbar.dart';
import 'T_CartCounter_Common.dart';

class T_HomeAppBar extends StatelessWidget {
  const T_HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return T_Customappbar(
      tittle: Column(
        children: [
          Text(
            'Good day For Shopping',
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: T_ColorsPages.textwhite),
          ),
          Text(
            'Vignesh Kumar',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: T_ColorsPages.white),
          )
        ],
      ),
      actioins: [
        T_AppBar_ICon(
          onpressed: () {},
          IconColors: Colors.white,
        )
      ],
    );
  }
}
