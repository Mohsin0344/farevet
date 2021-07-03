import 'package:farevet/Constants/Buttonz.dart';
import 'package:farevet/Constants/ConstantColors.dart';
import 'package:farevet/Constants/Constants.dart';
import 'package:farevet/Constants/HeaderText.dart';
import 'package:farevet/Constants/SizeConfig.dart';
import 'package:farevet/Constants/TextFieldss.dart';
import 'package:farevet/Screens/PetOwner/AddYourPet.dart';
import 'package:farevet/Screens/SignInScreen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SignUpEmailPet extends StatefulWidget {
  @override
  _SignUpEmailPetState createState() => _SignUpEmailPetState();
}

class _SignUpEmailPetState extends State<SignUpEmailPet> {
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
              child: HeaderText(
                text: 'Create Account',
              ),
            ),
            Text(
              'With Email',
              style: CustomFonts.googleBodyFont(
                color: ConstantColors.textColor,
                fontSize: CustomSizes.bodyText,
                height: 1.5
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 20,
            ),
            TextFields(
              hintText: 'Name',
              icon: 'images/person.png',
              isObscure: false,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            TextFields(
              hintText: 'Email',
              icon: 'images/mail.png',
              isObscure: false,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            TextFields(
              hintText: 'Password',
              icon: 'images/lock.png',
              isObscure: true,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Text(
              'By signing up you are',
              style: CustomFonts.googleBodyFont(
                color: ConstantColors.textColor,
                fontSize: CustomSizes.bodyText,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'agreeing to all the users terms and services',
              style: CustomFonts.googleBodyFont(
                color: ConstantColors.textColor,
                fontSize: CustomSizes.bodyText,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 4,
            ),
            AppButton(
              text: 'GO!',
              onPressed: (){
                Navigator.push(context, PageTransition(
                    type: PageTransitionType.rightToLeft,
                    child: AddYourPet()
                )
                );
              },
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: SizeConfig.heightMultiplier * 2
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
