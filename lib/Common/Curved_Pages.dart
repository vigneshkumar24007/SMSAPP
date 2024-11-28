import 'package:flutter/cupertino.dart';

class TCurvedPages extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final FirstCurve = Offset(0, size.height - 20);
    final LastCurve = Offset(30, size.height - 20);
    path.quadraticBezierTo(
        FirstCurve.dx, FirstCurve.dy, LastCurve.dx, LastCurve.dy);

    final SecondCurve = Offset(0, size.height - 20);
    final SecondLastCurvwe = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(SecondCurve.dx, SecondCurve.dy, SecondLastCurvwe.dx,
        SecondLastCurvwe.dy);

    final ThirdCurve = Offset(size.width, size.height - 20);
    final ThirdLastCurve = Offset(size.width, size.height);
    path.quadraticBezierTo(
        ThirdCurve.dx, ThirdCurve.dy, ThirdLastCurve.dx, ThirdLastCurve.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
