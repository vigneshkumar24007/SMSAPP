import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sqflites/Screens/Login_And_Signup/Login_Screen.dart';
import 'package:sqflites/Screens/Login_And_Signup/Sucess_Screen.dart';
import 'package:sqflites/Utils/Helpers/helper_Function.dart';
import 'package:sqflites/Utils/Sizes/sizes.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  @override
  Widget build(BuildContext context) {
    final dark = T_HelpersFunction.isDarkmode(context);
    return Scaffold(
      appBar: AppBar(


        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(T_Sizes.defaultspace),
          child: Column(
            children: [
              dark
                  ? Image(image: AssetImage('assets/images/Email.png'))
                  : Image(image: AssetImage('assets/images/Email.png')),
              SizedBox(
                height: T_Sizes.spacebtwsection,
              ),
              Text(
                'Verify Your Email Address!',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: T_Sizes.spacebtwitems,
              ),
              Text(
                'Vigneshkumar24009@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              SizedBox(
                height: T_Sizes.spacebtwitems,
              ),
              Text(
                'Congratulations! Your Account Awaits Verify Your Email to start Shopping And Expereince a world of Unrivated Deals And Personalized Offers',
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: T_Sizes.spacebtwsection),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(SucessScreen()),
                    child: Text('Continue')),
              ),
              SizedBox(height: T_Sizes.spacebtwitems),
              SizedBox(
                width: double.infinity,
                child:
                    TextButton(onPressed: () {}, child: Text('Resend Email')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
