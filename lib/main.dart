import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sqflites/Screens/Login_And_Signup/Login_Screen.dart';

import 'package:sqflites/Utils/Themes/Themes_pages.dart';

Future<void> main() async {
  // await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: T_ThemesPages.darktheme,
      themeMode: ThemeMode.system,
      theme: T_ThemesPages.Lightheme,
      home: LoginScreen(),
    );
  }
}
