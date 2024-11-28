import 'package:flutter/material.dart';
import 'package:sqflites/Utils/Helpers/helper_Function.dart';
import 'package:sqflites/Utils/Sizes/sizes.dart';

class SucessScreen extends StatefulWidget {
  const SucessScreen({super.key});

  @override
  State<SucessScreen> createState() => _SucessScreenState();
}

class _SucessScreenState extends State<SucessScreen> {
  

  @override
  Widget build(BuildContext context) {
    final dark = T_HelpersFunction.isDarkmode(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(T_Sizes.defaultspace),
          child: Column(
            children: [
              dark
                  ? Image(
                      height: 200,
                      width: T_HelpersFunction.ScreenWeight(),
                      image: AssetImage(
                        'assets/images/sucess.png',
                      ))
                  : Image(
                      height: 200,
                      width: T_HelpersFunction.ScreenWeight(),
                      image: AssetImage(
                        'assets/images/sucess.png',
                      )),
              SizedBox(
                height: T_Sizes.spacebtwsection,
              ),
              Text(
                'Your Account Successfully created!',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: T_Sizes.spacebtwitems,
              ),
              Text(
                'Welcome To Your Ultimate Shopping Destination Your Account isw Created',
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: T_Sizes.spacebtwsection,
              ),
              SizedBox(
                width: double.infinity,
                child:
                    ElevatedButton(onPressed: () {}, child: Text('Continue')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
