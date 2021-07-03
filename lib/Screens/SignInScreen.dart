import 'package:farevet/Constants/Buttonz.dart';
import 'package:farevet/Constants/ConstantColors.dart';
import 'package:farevet/Constants/Constants.dart';
import 'package:farevet/Constants/HeaderText.dart';
import 'package:farevet/Constants/SizeConfig.dart';
import 'package:farevet/Constants/TextFieldss.dart';
import 'package:farevet/Screens/SignUpTypeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: ConstantColors.backgroundColor,
        body: ListView(
          children: [
            HeaderText(text: 'Sign In'),
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.heightMultiplier * 0.5
              ),
              child: Text(
                'Please fill out the form with',
                style: CustomFonts.googleBodyFont(
                  color: ConstantColors.textColor,
                  fontSize: SizeConfig.textMultiplier * 1.5
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              'your login credentials',
              style: CustomFonts.googleBodyFont(
                  color: ConstantColors.textColor,
                  fontSize: SizeConfig.textMultiplier * 1.5
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.heightMultiplier * 6
              ),
              child: Image.asset('images/signinn.png',
              height: SizeConfig.imageSizeMultiplier * 50,
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 10,
            ),
            TextFields(
              isObscure: false,
              hintText: 'Email',
              icon: 'images/mail.png',
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2.5,
            ),
            TextFields(
              isObscure: true,
              hintText: 'Password',
              icon: 'images/lock.png',
            ),
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.heightMultiplier * 2
              ),
              child: Text(
                'By signing in you are',
                style: CustomFonts.googleBodyFont(
                  color: ConstantColors.textColor,
                  fontSize: CustomSizes.bodyText,
                  // fontWeight: FontWeight.w300
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              'agreeing to all the user terms and services',
              style: CustomFonts.googleBodyFont(
                color: ConstantColors.textColor,
                fontSize: CustomSizes.bodyText,
                // fontWeight: FontWeight.w300
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.heightMultiplier * 3
              ),
              child: AppButton(
                text: "Sign In",
              ),
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
                          child: SignUpType()
                      )
                      );
                    },
                    child: RichText(
                      text: TextSpan(
                          text: 'Don\'t have an account?',
                          style: CustomFonts.googleBodyFont(
                              color: ConstantColors.textColor,
                              fontSize: CustomSizes.bodyText
                          ),
                          children: [
                            TextSpan(
                                text: ' Sign up',
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
