import 'package:flutter/material.dart';
import 'package:sqflites/Common/Main_Screen_Common/T_CartCounter_Common.dart';

import 'package:sqflites/Common/Main_Screen_Common/T_SearchContainer_Common.dart';
import 'package:sqflites/Common/Main_Screen_Common/T_SectionHeading_Common.dart';
import 'package:sqflites/Screens/Home/Main_Screen.dart';
import 'package:sqflites/Screens/Store/Categorytab.dart';
import 'package:sqflites/Utils/Constatnts/Colors_Pages.dart';
import 'package:sqflites/Utils/Constatnts/enums.dart';
import 'package:sqflites/Utils/Helpers/helper_Function.dart';
import 'package:sqflites/Utils/Sizes/sizes.dart';
import 'package:sqflites/Widgets/CommonTabbar.dart';

import 'package:sqflites/Widgets/CustomAppbar.dart';
import 'package:sqflites/Widgets/Products_Card/T_GridLayout.dart';
import 'package:sqflites/Widgets/Products_Card/Vertical_Cards.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = T_HelpersFunction.isDarkmode(context);
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: T_Customappbar(
          tittle: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actioins: [
            T_AppBar_ICon(
              onpressed: () {},
            )
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: T_HelpersFunction.isDarkmode(context)
                      ? T_ColorsPages.Black
                      : T_ColorsPages.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: T_Sizes.defaultspace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        SizedBox(
                          height: T_Sizes.spacebtwitems,
                        ),
                        T_SearchContainer(
                            text: 'Search in Store',
                            showborder: true,
                            showbackground: false,
                            padding: EdgeInsets.zero),
                        SizedBox(
                          height: T_Sizes.spacebtwsection,
                        ),
                        T_SectionHeading(
                          tittle: 'Featured Brands',
                          onpressed: () {},
                        ),
                        SizedBox(
                          height: T_Sizes.spacebtwitems / 1.5,
                        ),
                        T_Gridlayout(
                            itemcount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return T_BrandCard(
                                showborder: true,
                              );
                            })
                      ],
                    ),
                  ),
                  bottom: T_TabBar(
                    tabs: [
                      Tab(
                        child: Text('Sports'),
                      ),
                      Tab(
                        child: Text('Furniture'),
                      ),
                      Tab(
                        child: Text('Watches'),
                      ),
                      Tab(
                        child: Text('T-Shirts'),
                      ),
                      Tab(
                        child: Text('Jeans'),
                      ),
                      Tab(
                        child: Text('Electronics'),
                      ),
                    ],
                  ),
                )
              ];
            },
            body: TabBarView(children: [
              T_Categorytab(),
              T_Categorytab(),
              T_Categorytab(),
              T_Categorytab(),
              T_Categorytab(),
              T_Categorytab(),
            ])),
      ),
    );
  }
}

class T_BrandCard extends StatelessWidget {
  const T_BrandCard({
    super.key,
    required this.showborder,
    this.onTap,
  });

  final bool showborder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = T_HelpersFunction.isDarkmode(context);
    return GestureDetector(
      onTap: onTap,
      child: T_RoundContainer(
        padding: EdgeInsets.all(T_Sizes.sm),
        showBorder: showborder,
        backgroundcolors: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: T_CirularImages(
                isNetworkImages: false,
                image: 'assets/images/Nike-2.png',
                background: Colors.transparent,
                overlaycolor: dark ? T_ColorsPages.white : T_ColorsPages.Black,
              ),
            ),
            SizedBox(
              width: T_Sizes.spacebtwitems / 2,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  T_brandtittleAndIcon(
                    title: 'Nike',
                    brandtextsize: TextSizes.large,
                  ),
                  Text(
                    '256 Products',
                    style: Theme.of(context).textTheme.labelMedium,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class T_CirularImages extends StatelessWidget {
  const T_CirularImages({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImages = false,
    this.overlaycolor,
    required this.background,
    this.width = 56,
    this.height = 56,
    this.padding = T_Sizes.sm,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImages;
  final Color? overlaycolor;
  final Color background;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: T_HelpersFunction.isDarkmode(context)
            ? T_ColorsPages.Black
            : T_ColorsPages.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
          image: isNetworkImages
              ? NetworkImage(image)
              : AssetImage(image) as ImageProvider,
          color: overlaycolor),
    );
  }
}
