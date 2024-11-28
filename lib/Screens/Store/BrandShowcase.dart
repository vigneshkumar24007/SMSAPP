import 'package:flutter/material.dart';
import 'package:sqflites/Screens/Home/Main_Screen.dart';
import 'package:sqflites/Screens/Store/Store_Screen.dart';
import 'package:sqflites/Utils/Constatnts/Colors_Pages.dart';
import 'package:sqflites/Utils/Helpers/helper_Function.dart';
import 'package:sqflites/Utils/Sizes/sizes.dart';

class T_Brandshowcase extends StatelessWidget {
  const T_Brandshowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return T_RoundContainer(
      showBorder: true,
      bordercolor: T_ColorsPages.Darkgrey,
      backgroundcolors: Colors.transparent,
      padding: EdgeInsets.all(T_Sizes.md),
      Margin: EdgeInsets.only(bottom: T_Sizes.spacebtwitems),
      child: Column(
        children: [
          ///Brand with products count
          T_BrandCard(
            showborder: false,
          ),
          SizedBox(
            height: T_Sizes.spacebtwitems,
          ),

          ///Brand Top 3 products images
          Row(
              children: images
                  .map((image) => T_BrandTopProductWidgets(image, context))
                  .toList())
        ],
      ),
    );
  }

  Widget T_BrandTopProductWidgets(String image, context) {
    return Expanded(
      child: T_RoundContainer(
        Height: 100,
        backgroundcolors: T_HelpersFunction.isDarkmode(context)
            ? T_ColorsPages.Darkgrey
            : T_ColorsPages.light,
        Margin: EdgeInsets.only(right: T_Sizes.sm),
        padding: EdgeInsets.all(T_Sizes.md),
        child: Image(fit: BoxFit.contain, image: AssetImage(image)),
      ),
    );
  }
}
