import 'package:farevet/Constants/Buttonz.dart';
import 'package:farevet/Constants/ConstantColors.dart';
import 'package:farevet/Constants/ConstantScreen.dart';
import 'package:farevet/Constants/Constants.dart';
import 'package:farevet/Constants/SharedAppBar.dart';
import 'package:farevet/Constants/SizeConfig.dart';
import 'package:farevet/Constants/TextFieldss.dart';
import 'package:farevet/Screens/PetOwner/PetPhoto.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AddYourPet extends StatefulWidget {
  @override
  _AddYourPetState createState() => _AddYourPetState();
}

class _AddYourPetState extends State<AddYourPet> {
  @override
  Widget build(BuildContext context) {
    return ConstantScreen(
      childrens: [
        SharedAppBar(
          titleText: 'ADD YOUR PET',
          leadingIcon: 'images/cancel.png',
          trailingIcon: 'images/help.png',
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 10,
        ),
        Text(
          'Enter Pet Details',
          style: TextStyle(
            color: ConstantColors.textColor,
            fontSize: CustomSizes.headerText,
            fontFamily: 'luxia',
            letterSpacing: 1.5
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 6,
        ),
        TextFields(
          hintText: 'Name',
          icon: 'images/pets.png',
          isObscure: false,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        TextFields(
          hintText: 'Species',
          icon: 'images/Species.png',
          isObscure: false,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        TextFields(
          hintText: 'Breed',
          icon: 'images/Breads.png',
          isObscure: false,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        TextFields(
          hintText: 'Gender',
          icon: 'images/Gender.png',
          isObscure: false,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        TextFields(
          hintText: 'Date of birth',
          icon: 'images/DOB.png',
          isObscure: false,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        TextFields(
          hintText: 'Weight (lbs)',
          icon: 'images/weights.png',
          isObscure: false,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 4,
        ),
        Text(
          'These details would help us to find the',
          style: CustomFonts.googleBodyFont(
            color: ConstantColors.textColor,
            fontSize: CustomSizes.bodyText,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          'best vet care for your pet!',
          style: CustomFonts.googleBodyFont(
            color: ConstantColors.textColor,
            fontSize: CustomSizes.bodyText,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        AppButton(
          text: 'NEXT',
          onPressed: (){
            print('tapped');
            Navigator.push(context, PageTransition(
                type: PageTransitionType.rightToLeft,
                child: PetPhoto()
            )
            );
          },
        )
      ],
    );
  }
}
