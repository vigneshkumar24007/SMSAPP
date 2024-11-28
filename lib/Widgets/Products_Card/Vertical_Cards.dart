import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sqflites/Common/Main_Screen_Common/T_CircularIcon_Common.dart';
import 'package:sqflites/Common/Styles/Spacing_Styles.dart';
import 'package:sqflites/Screens/Home/Main_Screen.dart';
import 'package:sqflites/Utils/Constatnts/Colors_Pages.dart';
import 'package:sqflites/Utils/Constatnts/enums.dart';
import 'package:sqflites/Utils/Helpers/helper_Function.dart';
import 'package:sqflites/Utils/Sizes/sizes.dart';
import 'package:sqflites/Widgets/Products_Card/Product_Card_Titile.dart';
import 'package:sqflites/Widgets/Products_Card/T_Product_price.dart';

class T_VerticalCards extends StatefulWidget {
  const T_VerticalCards({super.key});

  @override
  State<T_VerticalCards> createState() => _T_VerticalCardsState();
}

class _T_VerticalCardsState extends State<T_VerticalCards> {
  @override
  Widget build(BuildContext context) {
    final dark = T_HelpersFunction.isDarkmode(context);
    return GestureDetector(
      onTap: () {
        print('hiiii');
      },
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [T_ShadowStyles.VerticalproductShadow],
            borderRadius: BorderRadius.circular(T_Sizes.ProductImageradius),
            color: dark ? T_ColorsPages.Darkgrey : T_ColorsPages.white),
        child: Column(
          children: [
            T_RoundContainer(
              Height: 180,
              padding: EdgeInsets.all(T_Sizes.sm),
              backgroundcolors: dark ? T_ColorsPages.dark : T_ColorsPages.light,
              child: Stack(
                children: [
                  T_RoundImage(
                    Imgurl: 'assets/images/Nike.png',
                    applyImageradius: true,
                  ),
                  Positioned(
                    top: 12,
                    child: T_RoundContainer(
                      radius: T_Sizes.sm,
                      backgroundcolors:
                          T_ColorsPages.secondary.withOpacity(0.8),
                      padding: EdgeInsets.symmetric(
                          horizontal: T_Sizes.sm, vertical: T_Sizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: T_ColorsPages.Black),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: T_CircularIcon(
                          color: Colors.red, icon: Iconsax.heart5)),
                ],
              ),
            ),
            const SizedBox(
              height: T_Sizes.spacebtwitems / 2,
            ),
            const Padding(
              padding: EdgeInsets.only(left: T_Sizes.sm),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  T_ProductCardTitile(
                    tittle: 'Green Nike Air Shoes',
                    Smallsize: true,
                  ),
                  SizedBox(
                    height: T_Sizes.spacebtwitems / 2,
                  ),
                  T_brandtittleAndIcon(
                    title: 'Nike',
                  ),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: T_Sizes.sm),
                  child: T_ProductPrice(
                    Price: '3500',
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: T_ColorsPages.dark,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(T_Sizes.CardRadiusmd),
                        bottomRight:
                            Radius.circular(T_Sizes.ProductImageradius)),
                  ),
                  child: const SizedBox(
                    width: T_Sizes.iconlg * 1.2,
                    height: T_Sizes.iconlg * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: T_ColorsPages.white,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class T_brandtittleAndIcon extends StatelessWidget {
  const T_brandtittleAndIcon({
    super.key,
    required this.title,
    this.maxlines = 1,
    this.textcolor,
    this.iconColor = T_ColorsPages.primarycolor,
    this.textAlign = TextAlign.center,
    this.brandtextsize = TextSizes.small,
  });

  final String title;
  final int maxlines;
  final Color? textcolor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandtextsize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: T_BrandTittleText(
              color: textcolor,
              brandTextSize: brandtextsize,
              title: title,
              textAlign: textAlign,
              maxlines: maxlines),
        ),
        const SizedBox(
          height: T_Sizes.xs,
        ),
        Icon(
          Iconsax.verify,
          color: iconColor,
          size: T_Sizes.iconxs,
        )
      ],
    );
  }
}

class T_BrandTittleText extends StatelessWidget {
  const T_BrandTittleText({
    super.key,
    required this.title,
    this.textAlign = TextAlign.center,
    this.maxlines = 1,
    this.brandTextSize = TextSizes.small,
    this.color,
  });

  final String title;
  final TextAlign? textAlign;
  final int maxlines;
  final TextSizes brandTextSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textAlign,
        overflow: TextOverflow.ellipsis,
        maxLines: maxlines,
        style: brandTextSize == TextSizes.small
            ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
            : brandTextSize == TextSizes.medium
                ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
                : brandTextSize == TextSizes.large
                    ? Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .apply(color: color)
                    : Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(color: color));
  }
}
