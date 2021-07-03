import 'package:farevet/Constants/Buttonz.dart';
import 'package:farevet/Constants/ConstantColors.dart';
import 'package:farevet/Constants/ConstantScreen.dart';
import 'package:farevet/Constants/Constants.dart';
import 'package:farevet/Constants/SharedAppBar.dart';
import 'package:farevet/Constants/SizeConfig.dart';
import 'package:farevet/Screens/PetOwner/ReviewPetDetails.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class PetPhoto extends StatefulWidget {
  @override
  _PetPhotoState createState() => _PetPhotoState();
}

class _PetPhotoState extends State<PetPhoto> {
  @override
  Widget build(BuildContext context) {
    return ConstantScreen(
      childrens: [
        SharedAppBar(
          leadingIcon: 'images/backarr.png',
          titleText: 'ADD YOUR PET',
          trailingIcon: 'images/help.png',
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 10,
        ),
        Image.asset('images/uploadpet.png',
        height: SizeConfig.imageSizeMultiplier * 42,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        Text(
          'Upload Photo',
          style: TextStyle(
            fontFamily: 'luxia',
            fontSize: CustomSizes.headerText,
            color: ConstantColors.textColor,
            letterSpacing: 2
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        Text(
          'uploading your pet\'s photo',
          style: CustomFonts.googleBodyFont(
            color: ConstantColors.textColor,
            fontSize: CustomSizes.bodyText,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          'would help us and you to distinguish',
          style: CustomFonts.googleBodyFont(
            color: ConstantColors.textColor,
            fontSize: CustomSizes.bodyText,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          'your specific pet with others!',
          style: CustomFonts.googleBodyFont(
            color: ConstantColors.textColor,
            fontSize: CustomSizes.bodyText,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 20,
        ),
        Text(
          'These details would help us find the',
          style: CustomFonts.googleBodyFont(
            color: ConstantColors.textColor,
            fontSize: CustomSizes.bodyText,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          'best vet care for your pet',
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
          text: 'SAVE',
          onPressed: (){
            Navigator.push(context, PageTransition(
                type: PageTransitionType.fade,
                child: ReviewPets()
            )
            );
          },
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        InkWell(
          child: Text(
            'Skip',
            style: CustomFonts.googleBodyFont(
              color: Colors.red,
              fontSize: CustomSizes.bodyText,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
