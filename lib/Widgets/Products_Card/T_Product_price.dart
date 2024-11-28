import 'package:flutter/material.dart';

class T_ProductPrice extends StatelessWidget {
  const T_ProductPrice({
    super.key,
    this.Currencysign = '₹',
    required this.Price,
    this.maxlines = 1,
    this.isLarge = false,
    this.lineThrough = false,
  });

  final String Currencysign, Price;
  final int maxlines;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      Currencysign + Price,
      maxLines: maxlines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
          decoration: lineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(
          decoration: lineThrough ? TextDecoration.lineThrough : null),
    );
  }
}