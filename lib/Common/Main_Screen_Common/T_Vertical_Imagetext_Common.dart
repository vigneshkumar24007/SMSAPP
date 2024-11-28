import 'package:flutter/material.dart';
import 'package:sqflites/Utils/Constatnts/Colors_Pages.dart';
import 'package:sqflites/Utils/Helpers/helper_Function.dart';
import 'package:sqflites/Utils/Sizes/sizes.dart';

class T_Vertical_Imagetext extends StatelessWidget {
  const T_Vertical_Imagetext({
    super.key,
    required this.tittle,
    required this.image,
    this.textColor = Colors.white,
    this.backgroundcolor,
    this.onTap,
  });

  final String tittle, image;
  final Color textColor;
  final Color? backgroundcolor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: T_Sizes.spacebtwitems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: EdgeInsets.all(T_Sizes.sm),
              decoration: BoxDecoration(
                  color: T_ColorsPages.white,
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: T_Sizes.spacebtwitems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                tittle,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
