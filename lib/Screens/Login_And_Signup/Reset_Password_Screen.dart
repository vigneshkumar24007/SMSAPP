import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sqflites/Utils/Helpers/helper_Function.dart';
import 'package:sqflites/Utils/Sizes/sizes.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => ResetPasswordScreenState();
}

class ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(), icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(T_Sizes.defaultspace),
          child: Column(
            children: [
              Image(
                  height: 200,
                  width: T_HelpersFunction.ScreenWeight(),
                  image: AssetImage('assets/images/sucess.png')),
              SizedBox(
                height: T_Sizes.spacebtwsection,
              ),
              Text(
                'Password Reset Email Sent ',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: T_Sizes.spacebtwitems,
              ),
              Text(
                'Your Account Security is Our Priority! We\'ve sent you a Link to safely change Your Password and Keep Your Account Protected',
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: T_Sizes.spacebtwsection,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {}, child: Text('Done')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
