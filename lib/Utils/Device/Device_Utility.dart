import 'dart:ffi';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sqflites/Utils/Sizes/sizes.dart';
import 'package:url_launcher/url_launcher_string.dart';

class T_DeviceUtility {
  T_DeviceUtility._();

  static void hidekeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<void> setStatusBarColor(Color Color) async {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Color));
  }

  static bool isLandscapeOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0;
  }

  static bool isPortraitOrientation(BuildContext Context) {
    final Viewinsets = View.of(Context).viewInsets;
    return Viewinsets.bottom != 0;
  }

  static void Setfullscreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
        enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  static double Getscreenheight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double Getscreenweight(BuildContext context) {
    return MediaQuery.of(Get.context!).size.width;
  }

  static double getpixelratio() {
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }

  static double getstatusbarheight() {
    return MediaQuery.of(Get.context!).padding.top;
  }
/*  static double getbottomnavigationheight() {
    return  KBottomNavigationBarHeight;
  }*/
static double getAppBarHeight(){
  return  T_Sizes.appbarheight;
}

  static double getkeyboardHeight() {
    final viewinsets = MediaQuery.of(Get.context!).viewInsets;
    return viewinsets.bottom;
  }

  static Future<bool> iskeyboardvisible() async {
    final viewinsets = View.of(Get.context!).viewInsets;
    return viewinsets.bottom > 0;
  }

  static Future<bool> isphysicalDevice() async {
    return defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
  }

  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate());
  }

  static Future<void> setprefferedoreintattion(
      List<DeviceOrientation> orientation) async {
    await SystemChrome.setPreferredOrientations(orientation);
  }

  static void hidestatusbar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  static void ShowstatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  static Future<bool> hasInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  static bool isIos(){
    return Platform.isIOS;
  }
  static bool isAndroid(){
    return Platform. isAndroid ;
  }
  static void launchurl(String url)async{
    if(await canLaunchUrlString(url)){
      await launchUrlString(url);

    }else
      {
        throw 'Could not launch $url';
      }
  }

}
