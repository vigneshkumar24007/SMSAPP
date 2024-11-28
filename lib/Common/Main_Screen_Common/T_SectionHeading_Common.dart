import 'package:flutter/material.dart';

class T_SectionHeading extends StatelessWidget {
  const T_SectionHeading({
    super.key,
    this.textcolor,
    required this.tittle,
    this.buttonTitle = 'View all',
    this.onpressed,
    this.ShowActionButton = true,
  });

  final Color? textcolor;
  final bool ShowActionButton;
  final String tittle, buttonTitle;
  final void Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tittle,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textcolor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (ShowActionButton)
          TextButton(onPressed: onpressed, child: Text(buttonTitle))
      ],
    );
  }
}