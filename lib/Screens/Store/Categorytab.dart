import 'package:flutter/material.dart';
import 'package:sqflites/Common/Main_Screen_Common/T_SectionHeading_Common.dart';
import 'package:sqflites/Screens/Store/BrandShowcase.dart';
import 'package:sqflites/Utils/Sizes/sizes.dart';
import 'package:sqflites/Widgets/Products_Card/T_GridLayout.dart';
import 'package:sqflites/Widgets/Products_Card/Vertical_Cards.dart';

class T_Categorytab extends StatelessWidget {
  const T_Categorytab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.all(T_Sizes.defaultspace),
            child: Column(
              children: [
                T_Brandshowcase(
                  images: [
                    'assets/images/Puma-1.png',
                    'assets/images/Puma-1.png',
                    'assets/images/Puma-1.png',
                  ],
                ),
                T_Brandshowcase(
                  images: [
                    'assets/images/Puma-1.png',
                    'assets/images/Puma-1.png',
                    'assets/images/Puma-1.png',
                  ],
                ),
                SizedBox(
                  height: T_Sizes.spacebtwitems,
                ),
                T_SectionHeading(
                  tittle: 'You Might Like ',
                  onpressed: () {},
                ),
                SizedBox(
                  height: T_Sizes.spacebtwitems,
                ),
                T_Gridlayout(
                  itemcount: 4,
                  itemBuilder: (_, index) => T_VerticalCards(),
                ),
                SizedBox(
                  height: T_Sizes.spacebtwsection,
                )
              ],
            ),
          ),
        ]);
  }
}
