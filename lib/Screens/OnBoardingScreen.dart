import 'package:carousel_slider/carousel_slider.dart';
import 'package:farevet/Constants/Buttonz.dart';
import 'package:farevet/Constants/ConstantColors.dart';
import 'package:farevet/Constants/Constants.dart';
import 'package:farevet/Constants/HeaderText.dart';
import 'package:farevet/Constants/SizeConfig.dart';
import 'package:farevet/Screens/SignInScreen.dart';
import 'package:farevet/Screens/SignUpTypeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AppOnBoarding extends StatefulWidget {
  @override
  _AppOnBoardingState createState() => _AppOnBoardingState();
}

class _AppOnBoardingState extends State<AppOnBoarding> {
  int currentPos;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentPos = 0;
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: ConstantColors.backgroundColor,
        body: ListView(
          children: [
            HeaderText(text: 'FAREVET',),
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.heightMultiplier * 8,
              ),
              child: Text(
                'Pet care anytime, Anywhere!',
                style: CustomFonts.googleHeaderFont(
                  color: ConstantColors.textColor,
                  fontSize: CustomSizes.headerText
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.heightMultiplier * 1.5,
              ),
              child: Text(
                'Farevet makes pet care',
                style: CustomFonts.googleHeaderFont(
                    color: ConstantColors.textColor,
                    fontSize: CustomSizes.bodyText
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.heightMultiplier * 0.5,
              ),
              child: Text(
                'simple and stress free for your busy life',
                style: CustomFonts.googleHeaderFont(
                    color: ConstantColors.textColor,
                    fontSize: CustomSizes.bodyText
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.heightMultiplier * 5
              ),
              child: CarouselSlider(
                  options: CarouselOptions(height: SizeConfig.heightMultiplier * 35,
                      autoPlay: true,viewportFraction: 1.0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentPos = index;
                        });
                      }
                  ),
                  items: [
                    carouselImages(image: 'images/carousel1.png'),
                    carouselImages(image: 'images/carousel2.png'),
                    carouselImages(image: 'images/carousel3.png'),
                  ]
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: SizeConfig.heightMultiplier * 2,
                width: SizeConfig.widthMultiplier * 12,
               // color: Colors.red,
                padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.heightMultiplier * 0.40
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: currentPos == 0? ConstantColors.textColor:Color(0xffE8E8E8),
                          shape: currentPos != 0?BoxShape.circle: BoxShape.rectangle,
                          borderRadius: currentPos == 0 ? BorderRadius.circular(12): null
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: currentPos == 1? ConstantColors.textColor:Color(0xffE8E8E8),
                            shape: currentPos != 1?BoxShape.circle: BoxShape.rectangle,
                            borderRadius: currentPos == 1 ? BorderRadius.circular(12): null
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: currentPos == 2? ConstantColors.textColor:Color(0xffE8E8E8),
                            shape: currentPos != 2?BoxShape.circle: BoxShape.rectangle,
                            borderRadius: currentPos == 2 ? BorderRadius.circular(12): null
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.heightMultiplier  * 20,
              ),
              child: AppButton(
                text: 'Sign up',
                onPressed: (){
                  Navigator.push(context, PageTransition(
                      type: PageTransitionType.rightToLeftWithFade,
                      child: SignUpType()
                  )
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.heightMultiplier
              ),
              child: Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: SignIn()
                    )
                    );
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'Already have an account?',
                      style: CustomFonts.googleBodyFont(
                        color: ConstantColors.textColor,
                        fontSize: CustomSizes.bodyText
                      ),
                      children: [
                        TextSpan(
                          text: ' Sign in',
                          style: CustomFonts.googleBodyFont(
                            color: Colors.red
                          )
                        )
                      ]
                    ),
                  ),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget carouselImages({var image}){
    return    Container(
      //height: SizeConfig.heightMultiplier * 30,
      child: Image.asset(image),
    );
  }
}
