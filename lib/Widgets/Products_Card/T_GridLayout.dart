import 'package:flutter/material.dart';

import '../../Utils/Sizes/sizes.dart';

class T_Gridlayout extends StatelessWidget {
  const T_Gridlayout({
    super.key,
    required this.itemcount,
    this.mainAxisExtent = 288,
    required this.itemBuilder,
  });

  final int itemcount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemcount,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: T_Sizes.gridviewspcing,
          crossAxisSpacing: T_Sizes.gridviewspcing,
          mainAxisExtent: mainAxisExtent,
        ),
        itemBuilder: itemBuilder);
  }
}
