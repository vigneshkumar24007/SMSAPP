import 'package:flutter/cupertino.dart';

import '../Curved_Pages.dart';

class T_Curvewidgets extends StatelessWidget {
  const T_Curvewidgets({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: TCurvedPages(), child: child);
  }
}
