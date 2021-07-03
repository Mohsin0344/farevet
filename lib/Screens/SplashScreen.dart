import 'package:farevet/Constants/ConstantColors.dart';
import 'package:farevet/Constants/Constants.dart';
import 'package:farevet/Constants/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:farevet/Screens/OnBoardingScreen.dart';
import 'dart:async';
import 'package:page_transition/page_transition.dart';

class AppSplashScreen extends StatefulWidget {
  @override
  _AppSplashScreenState createState() => _AppSplashScreenState();
}

class _AppSplashScreenState extends State<AppSplashScreen> {
  var height = SizeConfig.heightMultiplier;
  var width = SizeConfig.widthMultiplier;

  @override
  void initState() {
    super.initState();
    displaySplash();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: ListView(
          children: [
            SizedBox(
              height: height * 10,
            ),
            Container(
              height: height * 32,
              alignment: Alignment.bottomCenter,
              child: Image.asset('images/finalLogo.png',fit: BoxFit.cover,),
            ),
            Text('FAREVET',
            style: TextStyle(
              color: ConstantColors.textColor,
              fontSize: SizeConfig.textMultiplier * 3,
                fontFamily: 'subway'
            ),
              textAlign: TextAlign.center,
            ),
            Text('Find Affordable Vet Care',
              style: CustomFonts.googleHeaderFont(
                  color: ConstantColors.textColor,
                  fontSize: SizeConfig.heightMultiplier * 1.8,
              ),
              textAlign: TextAlign.center,
            ),
            Text('for Your Dog',
              style: CustomFonts.googleHeaderFont(
                  color: ConstantColors.textColor,
                  fontSize: SizeConfig.heightMultiplier * 1.8,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
  void displaySplash() {
    Timer(Duration(seconds: 2), () {
      Navigator.pop(context);
      Navigator.push(context, PageTransition(
          type: PageTransitionType.rightToLeft,
          child: AppOnBoarding()
      )
      );
    }
    );
  }
}
