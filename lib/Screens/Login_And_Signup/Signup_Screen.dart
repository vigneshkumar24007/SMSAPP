import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sqflites/Screens/Login_And_Signup/Verify_Email_Screen.dart';
import 'package:sqflites/Utils/Constatnts/Colors_Pages.dart';
import 'package:sqflites/Utils/Helpers/helper_Function.dart';
import 'package:sqflites/Utils/Sizes/sizes.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    final dark = T_HelpersFunction.isDarkmode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(T_Sizes.defaultspace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lets create Account',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: T_Sizes.spacebtwsection,
              ),
              Form(
                  child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'First Name',
                              prefixIcon: Icon(Iconsax.user)),
                        ),
                      ),
                      SizedBox(
                        width: T_Sizes.md,
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Last Name',
                              prefixIcon: Icon(Iconsax.user)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: T_Sizes.spacebtwitems,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'User Name', prefixIcon: Icon(Iconsax.user)),
                  ),
                  SizedBox(
                    height: T_Sizes.spacebtwitems,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'E-Mail', prefixIcon: Icon(Iconsax.direct)),
                  ),
                  SizedBox(
                    height: T_Sizes.spacebtwitems,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Phone Number',
                        prefixIcon: Icon(Iconsax.call)),
                  ),
                  SizedBox(
                    height: T_Sizes.spacebtwitems,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        suffixIcon: Icon(Iconsax.eye_slash),
                        labelText: 'Password',
                        prefixIcon: Icon(Iconsax.password_check)),
                  ),
                  SizedBox(
                    height: T_Sizes.spacebtwsection,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Checkbox(value: true, onChanged: (value) {}),
                      ),
                      SizedBox(
                        width: T_Sizes.spacebtwitems,
                      ),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: 'I Agree To ',
                            style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(
                            text: 'Privacy Policy',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .apply(
                                    decoration: TextDecoration.underline,
                                    color: dark
                                        ? T_ColorsPages.white
                                        : T_ColorsPages.primarycolor,
                                    decorationColor: dark
                                        ? T_ColorsPages.white
                                        : T_ColorsPages.primarycolor)),
                        TextSpan(
                            text: ' And ',
                            style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(
                            text: 'Terms of Use',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .apply(
                                    color: dark
                                        ? T_ColorsPages.white
                                        : T_ColorsPages.primarycolor,
                                    decoration: TextDecoration.underline,
                                    decorationColor: dark
                                        ? T_ColorsPages.white
                                        : T_ColorsPages.primarycolor)),
                      ]))
                    ],
                  )
                ],
              )),
              SizedBox(
                height: T_Sizes.spacebtwsection,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(VerifyEmailScreen()),
                      child: Text('Create Account'))),
              SizedBox(
                height: T_Sizes.spacebtwsection,
              ),
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
