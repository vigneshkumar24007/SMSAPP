import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sqflites/Common/Main_Screen_Common/T_HomeAppBar.dart';
import 'package:sqflites/Common/Main_Screen_Common/T_PrimaryheadContainer_Common.dart';
import 'package:sqflites/Common/Main_Screen_Common/T_SearchContainer_Common.dart';
import 'package:sqflites/Common/Main_Screen_Common/T_SectionHeading_Common.dart';
import 'package:sqflites/Common/Main_Screen_Common/T_Vertical_Imagetext_Common.dart';
import 'package:sqflites/Contoller/HomeController.dart';
import 'package:sqflites/Utils/Constatnts/Colors_Pages.dart';
import 'package:sqflites/Utils/Sizes/sizes.dart';
import 'package:sqflites/Widgets/Products_Card/T_GridLayout.dart';
import 'package:sqflites/Widgets/Products_Card/Vertical_Cards.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Homecontroller());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            T_primaryheadercontainer(
                child: Column(
              children: [
                T_HomeAppBar(),
                SizedBox(
                  height: T_Sizes.spacebtwsection,
                ),
                T_SearchContainer(text: 'Search..'),
                SizedBox(
                  height: T_Sizes.spacebtwsection,
                ),
                Padding(
                  padding: EdgeInsets.only(left: T_Sizes.defaultspace),
                  child: Column(
                    children: [
                      //Heading
                      T_SectionHeading(
                        tittle: 'Popular catogires',
                        ShowActionButton: false,
                        textcolor: T_ColorsPages.white,
                      ),
                      SizedBox(
                        height: T_Sizes.spacebtwsection,
                      ),
                      // catogires Scroll
                      SizedBox(
                        height: 80,
                        child: ListView.builder(
                            itemCount: 10,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              return T_Vertical_Imagetext(
                                tittle: 'Shoes Catogories',
                                image: 'assets/images/Nike.png',
                                textColor: Colors.white,
                                onTap: () {},
                              );
                            }),
                      )
                    ],
                  ),
                )
              ],
            )),
            Padding(
                padding: const EdgeInsets.all(T_Sizes.defaultspace),
                child: Column(
                  children: [
                    CarouselSlider(
                        items: [
                          T_RoundImage(
                            Imgurl: 'assets/images/nikeADD.png',
                          ),
                          T_RoundImage(
                            Imgurl: 'assets/images/nikeADD_2.png',
                          ),
                          T_RoundImage(
                            Imgurl: 'assets/images/nikeADD_3.png',
                          ),
                          T_RoundImage(
                            Imgurl: 'assets/images/nikeADD_2.png',
                          ),
                        ],
                        options: CarouselOptions(
                          autoPlay: true,
                          viewportFraction: 0.9,
                          onPageChanged: (index, _) =>
                              controller.updatePageIndicator(index),
                        )),
                    SizedBox(
                      height: T_Sizes.spacebtwitems,
                    ),
                    Center(
                      child: Obx(
                        () => Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            for (int i = 0; i < 4; i++)
                              T_RoundContainer(
                                widht: 20,
                                Height: 4,
                                Margin: EdgeInsets.only(right: 10),
                                backgroundcolors:
                                    controller.carousalCurrentIndex.value == i
                                        ? T_ColorsPages.primarycolor
                                        : T_ColorsPages.grey,
                              ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: T_Sizes.spacebtwsection,
                    ),
                    Row(
                      children: [
                        Text('Popular Catagoeris'),
                      ],
                    ),
                    SizedBox(
                      height: T_Sizes.spacebtwitems,
                    ),
                    T_Gridlayout(
                      itemcount: 6,
                      itemBuilder: (_, index) => T_VerticalCards(),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class T_RoundImage extends StatelessWidget {
  const T_RoundImage({
    super.key,
    required this.Imgurl,
    this.Width,
    this.height,
    this.applyImageradius = true,
    this.border,
    this.backgroundcolor,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetWorkingImage = false,
    this.onPressed,
    this.borderradius = T_Sizes.md,
  });

  final String Imgurl;
  final double? Width, height;
  final bool applyImageradius;
  final BoxBorder? border;
  final Color? backgroundcolor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final double borderradius;
  final bool isNetWorkingImage;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: Width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundcolor,
          borderRadius: applyImageradius
              ? BorderRadius.circular(borderradius)
              : BorderRadius.zero,
        ),
        child: ClipRRect(
            borderRadius: applyImageradius
                ? BorderRadius.circular(borderradius)
                : BorderRadius.zero,
            child: Image(
              image: isNetWorkingImage
                  ? NetworkImage(Imgurl)
                  : AssetImage(Imgurl) as ImageProvider,
              fit: fit,
            )),
      ),
    );
  }
}

// 2 Curver Container widgets
class T_RoundContainer extends StatelessWidget {
  const T_RoundContainer({
    super.key,
    this.Margin,
    this.widht,
    this.Height,
    this.radius = 16,
    this.child,
    this.backgroundcolors = T_ColorsPages.white,
    this.showBorder = false,
    this.bordercolor = T_ColorsPages.Border_Primary,
    this.padding,
  });

  final double? widht;
  final double? Height;
  final double radius;
  final EdgeInsets? Margin;
  final Widget? child;
  final Color backgroundcolors;
  final bool showBorder;
  final Color bordercolor;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widht,
      height: Height,
      margin: Margin,
      padding: padding,
      decoration: BoxDecoration(
          border: showBorder ? Border.all(color: bordercolor) : null,
          borderRadius: BorderRadius.circular(radius),
          color: backgroundcolors),
      child: child,
    );
  }
}
