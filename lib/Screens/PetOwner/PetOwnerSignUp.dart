import 'package:farevet/Constants/Buttonz.dart';
import 'package:farevet/Constants/ConstantColors.dart';
import 'package:farevet/Constants/Constants.dart';
import 'package:farevet/Constants/HeaderText.dart';
import 'package:farevet/Constants/SizeConfig.dart';
import 'package:farevet/Screens/PetOwner/SignUpEmail.dart';
import 'package:farevet/Screens/SignInScreen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class PetOwnerSignUp extends StatefulWidget {
  @override
  _PetOwnerSignUpState createState() => _PetOwnerSignUpState();
}

class _PetOwnerSignUpState extends State<PetOwnerSignUp> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: ConstantColors.backgroundColor,
        body: ListView(
          children: [
            Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.heightMultiplier * 3
                ),
                child: HeaderText(text: 'Create Account',)),
            Text(
              'Just one more step!',
              style: CustomFonts.googleBodyFont(
                color: ConstantColors.textColor,
                fontSize: CustomSizes.bodyText,
                height: 1.5
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 4,
            ),
            Image.asset('images/Create account.png',
            height: SizeConfig.imageSizeMultiplier * 80,
            ),
            AppButton(
              text: 'Sign up with Facebook',
              color: ConstantColors.facebookButton,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1.5,
            ),
            AppButton(
              text: 'Sign up with Google',
              color: ConstantColors.googleButton,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1.5,
            ),
            AppButton(
              text: 'Sign up with Email',
              color: ConstantColors.emailColor,
              onPressed: (){
                Navigator.push(context, PageTransition(
                    type: PageTransitionType.rightToLeft,
                    child: SignUpEmailPet()
                )
                );
              },
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
