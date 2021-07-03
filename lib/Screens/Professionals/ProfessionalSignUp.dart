import 'package:farevet/Constants/Buttonz.dart';
import 'package:farevet/Constants/ConstantColors.dart';
import 'package:farevet/Constants/Constants.dart';
import 'package:farevet/Constants/HeaderText.dart';
import 'package:farevet/Constants/SizeConfig.dart';
import 'package:farevet/Constants/TextFieldss.dart';
import 'package:farevet/Screens/SignInScreen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ProfessionalSignUp extends StatefulWidget {
  @override
  _ProfessionalSignUpState createState() => _ProfessionalSignUpState();
}

class _ProfessionalSignUpState extends State<ProfessionalSignUp> {
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
                child: HeaderText(text: 'Create Account')),
            Text(
              '\"Professional\"',
              style: CustomFonts.googleBodyFont(
                color: ConstantColors.textColor,
                fontSize: CustomSizes.bodyText,
                height: 1.5
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 12,
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
              hintText: 'Name',
              icon: 'images/mail.png',
              isObscure: false,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            TextFields(
              hintText: 'Name',
              icon: 'images/phone.png',
              isObscure: false,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            TextFields(
              hintText: 'Name',
              icon: 'images/home.png',
              isObscure: false,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            TextFields(
              hintText: 'Name',
              icon: 'images/services.png',
              isObscure: false,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            TextFields(
              hintText: 'Name',
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
              text: 'Save',
              color: ConstantColors.buttonColor,
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
