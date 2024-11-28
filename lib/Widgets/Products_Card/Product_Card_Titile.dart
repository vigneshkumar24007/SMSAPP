import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class T_ProductCardTitile extends StatelessWidget {
  const T_ProductCardTitile({
    super.key,
    required this.tittle,
    this.Smallsize = false,
    this.textAlign = TextAlign.left,
    this.maxlines = 2,
  });

  final String tittle;
  final bool Smallsize;
  final TextAlign? textAlign;
  final int maxlines;

  @override
  Widget build(BuildContext context) {
    return Text(
      tittle,
      style: Smallsize
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: maxlines,
      textAlign: textAlign,
    );
  }
}
