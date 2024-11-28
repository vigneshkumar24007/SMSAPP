import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sqflites/Common/BottomNavigation.dart';
import 'package:sqflites/Common/Styles/Style.dart';
import 'package:sqflites/Screens/Login_And_Signup/Forget_Password_Screen.dart';

import 'package:sqflites/Screens/Login_And_Signup/Signup_Screen.dart';

import 'package:sqflites/Utils/Constatnts/Colors_Pages.dart';
import 'package:sqflites/Utils/Helpers/helper_Function.dart';
import 'package:sqflites/Utils/Sizes/sizes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final dark = T_HelpersFunction.isDarkmode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: T_SpacingStyle.paddingwithappbarheight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                        55.0), // Set the desired border radius
                    child: Image(
                      height: 150,
                      image: AssetImage(dark
                          ? 'assets/images/logo.png'
                          : 'assets/images/logo.png'),
                    ),
                  ),
                  Text(
                    'Welcome To Bneeds',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(
                    height: T_Sizes.sm,
                  ),
                  Text(
                    'Business Needs For You',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              SizedBox(
                height: T_Sizes.spacebtwitems,
              ),
              Form(
                  child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: T_Sizes.spacebtwsection),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: 'Email'),
                    ),
                    SizedBox(
                      height: T_Sizes.spacebtwitems,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: 'Password',
                          suffixIcon: Icon(Iconsax.eye_slash)),
                    ),
                    SizedBox(
                      height: T_Sizes.spacebtwitems / 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            Text('Remember Me')
                          ],
                        ),
                        TextButton(
                            onPressed: () => Get.to(ForgetPasswordScreen()),
                            child: Text('Forget Password?'))
                      ],
                    ),
                    SizedBox(
                      height: T_Sizes.spacebtwsection,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () => Get.to(CommonBottomnavigation()),
                            child: Text('Sign In'))),
                    SizedBox(
                      height: T_Sizes.spacebtwitems,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                            onPressed: () => Get.to(() => SignupScreen()),
                            child: Text('Create Account'))),
                    SizedBox(
                      height: T_Sizes.spacebtwsection,
                    ),
                  ],
                ),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                      color: dark ? T_ColorsPages.Darkgrey : T_ColorsPages.grey,
                      thickness: 0.5,
                      indent: 60,
                      endIndent: 5,
                    ),
                  ),
                  Text(
                    'or Sign in With',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Flexible(
                    child: Divider(
                      color: dark ? T_ColorsPages.Darkgrey : T_ColorsPages.grey,
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 60,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: T_Sizes.spacebtwsection,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: T_Sizes.iconmd,
                    height: T_Sizes.iconmd,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/google.png'))),
                  ),
                  SizedBox(
                    width: T_Sizes.lg,
                  ),
                  Container(
                    width: T_Sizes.iconmd,
                    height: T_Sizes.iconmd,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/facebook.png'))),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
