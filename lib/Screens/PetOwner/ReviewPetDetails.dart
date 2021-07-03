import 'package:farevet/Constants/Buttonz.dart';
import 'package:farevet/Constants/ConstantColors.dart';
import 'package:farevet/Constants/ConstantScreen.dart';
import 'package:farevet/Constants/Constants.dart';
import 'package:farevet/Constants/SharedAppBar.dart';
import 'package:farevet/Constants/SizeConfig.dart';
import 'package:farevet/Screens/PetOwner/PetOwnerHome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ReviewPets extends StatefulWidget {
  @override
  _ReviewPetsState createState() => _ReviewPetsState();
}

class _ReviewPetsState extends State<ReviewPets> {
  @override
  Widget build(BuildContext context) {
    return ConstantScreen(
      childrens: [
        SharedAppBar(
          leadingIcon: 'images/cancel.png',
          titleText: 'YOUR PETS',
          trailingIcon: 'images/help.png',
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 4,
        ),
        Container(
          height: SizeConfig.heightMultiplier * 20,
          child: Row(
            children: [
              Expanded(
                flex : 2,
                child: Image.asset('images/reviewpet.png')
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.widthMultiplier * 1.8,
                    top: SizeConfig.heightMultiplier * 1.3,
                    bottom: SizeConfig.heightMultiplier * 1.3
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Name',
                            style: CustomFonts.googleBodyFont(
                              color: ConstantColors.textColor,
                              fontSize: CustomSizes.headerText,
                              fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Catch Phrase',
                            style: CustomFonts.googleBodyFont(
                                color: ConstantColors.textColor,
                                fontSize: CustomSizes.bodyText
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Species',
                            style: CustomFonts.googleBodyFont(
                                color: ConstantColors.textColor,
                                fontSize: CustomSizes.bodyText
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Breed',
                            style: CustomFonts.googleBodyFont(
                                color: ConstantColors.textColor,
                                fontSize: CustomSizes.bodyText
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Male',
                            style: CustomFonts.googleBodyFont(
                                color: ConstantColors.textColor,
                                fontSize: CustomSizes.bodyText
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Weight',
                            style: CustomFonts.googleBodyFont(
                                color: ConstantColors.textColor,
                                fontSize: CustomSizes.bodyText
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Date of Birth',
                            style: CustomFonts.googleBodyFont(
                                color: ConstantColors.textColor,
                                fontSize: CustomSizes.bodyText
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 3,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: SizeConfig.widthMultiplier * 6
          ),
          child: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              height: SizeConfig.heightMultiplier * 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('images/UPLOAD PET.png'),
                  Padding(
                    padding: EdgeInsets.only(
                      left: SizeConfig.widthMultiplier * 6
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Add a new pet',
                      style: CustomFonts.googleBodyFont(
                        color: ConstantColors.textColor,
                        fontSize: CustomSizes.headerText,
                        fontWeight: FontWeight.w400
                      ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 25,
        ),
        Text(
          'You can add more than one pet',
          style: CustomFonts.googleBodyFont(
            color: ConstantColors.textColor,
            fontSize: CustomSizes.bodyText
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        AppButton(
          text: 'OK',
          onPressed: (){
            Navigator.push(context, PageTransition(
                type: PageTransitionType.rightToLeft,
                child: PetOwnerHome()
            )
            );
          },
        )
      ],
    );
  }
}
