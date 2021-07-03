import 'package:farevet/Constants/ConstantColors.dart';
import 'package:farevet/Constants/Constants.dart';
import 'package:farevet/Constants/HeaderText.dart';
import 'package:farevet/Constants/SizeConfig.dart';
import 'package:farevet/Screens/PetOwner/PetOwnerSignUp.dart';
import 'package:farevet/Screens/Professionals/ProfessionalSignUp.dart';
import 'package:farevet/Screens/SignInScreen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SignUpType extends StatefulWidget {
  @override
  _SignUpTypeState createState() => _SignUpTypeState();
}

class _SignUpTypeState extends State<SignUpType> {
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
                top: SizeConfig.heightMultiplier * 7
              ),
              child: Text(
                'Are you a pet Owner',
                style: CustomFonts.googleBodyFont(
                  color: ConstantColors.textColor,
                  fontSize: CustomSizes.headerText,
                  fontWeight: FontWeight.w300
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              'or you will be providing services',
              style: CustomFonts.googleBodyFont(
                  color: ConstantColors.textColor,
                  fontSize: CustomSizes.headerText,
                  fontWeight: FontWeight.w300
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              '(professional)?',
              style: CustomFonts.googleBodyFont(
                  color: ConstantColors.textColor,
                  fontSize: CustomSizes.headerText,
                  fontWeight: FontWeight.w300
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.heightMultiplier
              ),
              child: Text(
                'This is an important step as this step would',
                style: CustomFonts.googleBodyFont(
                    color: ConstantColors.textColor,
                    fontSize: CustomSizes.bodyText,
                   // fontWeight: FontWeight.w300
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              'decide what kind of features Farevet will',
              style: CustomFonts.googleBodyFont(
                color: ConstantColors.textColor,
                fontSize: CustomSizes.bodyText,
                // fontWeight: FontWeight.w300
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'provide you!',
              style: CustomFonts.googleBodyFont(
                color: ConstantColors.textColor,
                fontSize: CustomSizes.bodyText,
                // fontWeight: FontWeight.w300
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.heightMultiplier * 10,
              ),
              child: Container(
                height: SizeConfig.heightMultiplier * 30,
                child: Column(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                       child: Row(
                         children: [
                           Expanded(
                             child: InkWell(
                               onTap: (){
                                 Navigator.push(context, PageTransition(
                                     type: PageTransitionType.fade,
                                     child: PetOwnerSignUp()
                                 )
                                 );
                               },
                               child: Container(
                                 child: Padding(
                                     padding: EdgeInsets.all(20),
                                     child: Image.asset('images/professionall.png')),
                               ),
                             ),
                           ),
                           Expanded(
                             child: InkWell(
                               onTap: (){
                                 Navigator.push(context, PageTransition(
                                     type: PageTransitionType.fade,
                                     child: ProfessionalSignUp()
                                 )
                                 );
                               },
                               child: Container(
                                 child: Padding(
                                     padding: EdgeInsets.all(20),
                                     child: Image.asset('images/petownerr.png')),
                               ),
                             ),
                           ),
                         ],
                       ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  'Pet Owner',
                                  style: CustomFonts.googleBodyFont(
                                    color: ConstantColors.textColor,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  'Professional',
                                  style: CustomFonts.googleBodyFont(
                                      color: ConstantColors.textColor
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: SizeConfig.heightMultiplier * 15
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
}
