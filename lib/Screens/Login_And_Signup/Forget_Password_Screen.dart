import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sqflites/Screens/Login_And_Signup/Reset_Password_Screen.dart';
import 'package:sqflites/Utils/Helpers/helper_Function.dart';
import 'package:sqflites/Utils/Sizes/sizes.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final dark = T_HelpersFunction.isDarkmode(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:
              Icon(Icons.arrow_back, color: dark ? Colors.white : Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(T_Sizes.defaultspace),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Forgert Password',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: T_Sizes.spacebtwsection,
              ),
              Text(
                'Enter Your Email To Recover Your Password',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(
                height: T_Sizes.spacebtwsection,
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: 'E-mail'),
              ),
              SizedBox(
                height: T_Sizes.spacebtwsection,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(ResetPasswordScreen()),
                    child: Text('Submit')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
