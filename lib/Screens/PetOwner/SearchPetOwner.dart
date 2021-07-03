import 'package:farevet/Constants/ConstantColors.dart';
import 'package:farevet/Constants/Constants.dart';
import 'package:farevet/Constants/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SearchPetOwner extends StatefulWidget {
  @override
  _SearchPetOwnerState createState() => _SearchPetOwnerState();
}

class _SearchPetOwnerState extends State<SearchPetOwner> {
  bool vet;
  bool boarding;
  bool training;
  bool grooming;
  bool cremation;
  bool animalshelter;
  bool vaccination;
  bool dental;
  bool care;
  bool emergency;
  bool more;
  bool five;
  bool four;
  bool three;
  bool cc;
  bool co;
  bool f;
  bool dog;
  bool cat;
  bool other;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    vet = false;
    boarding = false;
    training = false;
    grooming = false;
    cremation = false;
    animalshelter = false;
    vaccination = false;
    dental = false;
    care = false;
    emergency = false;
    more = false;
    five = false;
    four = false;
    three = false;
    cc = false;
    co = false;
    f = false;
    cat = false;
    dog = false;
    other = false;
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: ConstantColors.backgroundColor,
        body: ListView(
          padding: EdgeInsets.only(
            top: SizeConfig.heightMultiplier * 4,
            left: SizeConfig.widthMultiplier * 6,
            right: SizeConfig.widthMultiplier * 6,
            bottom: SizeConfig.heightMultiplier * 4
          ),
          children: [
            Container(
              height: SizeConfig.heightMultiplier * 6.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
                border: Border.all(
                  width: 3.0,
                  color: const Color(0xFF5A4371),
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFDEDEDE),
                    offset: Offset(0, 0),
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: TextField(
                cursorColor: ConstantColors.textColor,
                style: CustomFonts.googleBodyFont(
                  color: ConstantColors.textColor,
                  fontSize: CustomSizes.bodyText,
                  height: 2.0
                ),
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  hintText: 'Doctors, Services etc...',
                  hintStyle: CustomFonts.googleBodyFont(
                    color: ConstantColors.textColor,
                    fontSize: CustomSizes.bodyText,
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.heightMultiplier * 0.85,
                        bottom: SizeConfig.heightMultiplier * 0.85,
                      right: SizeConfig.widthMultiplier * 3
                    ),
                    child: Container(
                      width: SizeConfig.widthMultiplier * 13,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: ConstantColors.textColor,
                            width: 1
                          )
                        )
                      ),
                      child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Image.asset('images/search.png')),
                    ),
                  )
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Type/Pet:',
                style: CustomFonts.googleBodyFont(
                    color: const Color(0xFF5A4371),
                    fontSize: CustomSizes.headerText * 1.1,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1.5,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Wrap(
                spacing: SizeConfig.widthMultiplier * 2,
                runSpacing: SizeConfig.widthMultiplier * 2,
                children: [
                  InkWell(
                    onTap: (){
                      if(!dog){
                        setState(() {
                          dog = true;
                        });
                      } else {
                        setState(() {
                          dog = false;
                        });
                      }
                    },
                    child: Container(
                      height: SizeConfig.heightMultiplier * 4,
                      width: SizeConfig.widthMultiplier * 15,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: !dog ?
                              ConstantColors.textColor : ConstantColors.buttonColor,
                              width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(9)
                      ),
                      child: Center(
                        child: Text(
                          'Dog',
                          style: CustomFonts.googleBodyFont(
                              color: !dog ? Color(0xFF5A4371) :
                              ConstantColors.buttonColor,
                              fontSize: CustomSizes.bodyText * 1.3,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      if(!cat){
                        setState(() {
                          cat = true;
                        });
                      } else {
                        setState(() {
                          cat = false;
                        });
                      }
                    },
                    child: Container(
                      height: SizeConfig.heightMultiplier * 4,
                      width: SizeConfig.widthMultiplier * 15,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: !cat ? ConstantColors.textColor :
                              ConstantColors.buttonColor,
                              width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(9)
                      ),
                      child: Center(
                        child: Text(
                          'Cat',
                          style: CustomFonts.googleBodyFont(
                              color: !cat ?
                              Color(0xFF5A4371) : ConstantColors.buttonColor,
                              fontSize: CustomSizes.bodyText * 1.3,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      if(!other){
                        setState(() {
                          other = true;
                        });
                      } else {
                        setState(() {
                          other = false;
                        });
                      }
                    },
                    child: Container(
                      height: SizeConfig.heightMultiplier * 4,
                      width: SizeConfig.widthMultiplier * 18,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: !other ?
                              ConstantColors.textColor :
                              ConstantColors.buttonColor,
                              width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(9)
                      ),
                      child: Center(
                        child: Text(
                          'Others',
                          style: CustomFonts.googleBodyFont(
                              color: !other ? Color(0xFF5A4371) :
                              ConstantColors.buttonColor,
                              fontSize: CustomSizes.bodyText * 1.3,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Divider(
              color: Color(0xff707070),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Services:',
                style: CustomFonts.googleBodyFont(
                    color: const Color(0xFF5A4371),
                  fontSize: CustomSizes.headerText * 1.1,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1.5,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Wrap(
                spacing: SizeConfig.widthMultiplier * 2,
                runSpacing: SizeConfig.widthMultiplier * 2,
                children: [
                  InkWell(
                    onTap: (){
                      if(!vet){
                        setState(() {
                          vet = true;
                        });
                      } else {
                        setState(() {
                          vet = false;
                        });
                      }
                      },
                    child: Container(
                      height: SizeConfig.heightMultiplier * 4,
                      width: SizeConfig.widthMultiplier * 25,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: !vet ?
                          ConstantColors.textColor : ConstantColors.buttonColor,
                          width: 1.5
                        ),
                        borderRadius: BorderRadius.circular(9)
                      ),
                      child: Center(
                        child: Text(
                          'Veterinary',
                          style: CustomFonts.googleBodyFont(
                              color: !vet ? Color(0xFF5A4371) :
                              ConstantColors.buttonColor,
                            fontSize: CustomSizes.bodyText * 1.3,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      if(!boarding){
                        setState(() {
                          boarding = true;
                        });
                      } else {
                        setState(() {
                          boarding = false;
                        });
                      }
                    },
                    child: Container(
                      height: SizeConfig.heightMultiplier * 4,
                      width: SizeConfig.widthMultiplier * 22,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: !boarding ? ConstantColors.textColor :
                              ConstantColors.buttonColor,
                              width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(9)
                      ),
                      child: Center(
                        child: Text(
                          'Boarding',
                          style: CustomFonts.googleBodyFont(
                              color: !boarding ?
                              Color(0xFF5A4371) : ConstantColors.buttonColor,
                              fontSize: CustomSizes.bodyText * 1.3,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      if(!training){
                        setState(() {
                          training = true;
                        });
                      } else {
                        setState(() {
                          training = false;
                        });
                      }
                    },
                    child: Container(
                      height: SizeConfig.heightMultiplier * 4,
                      width: SizeConfig.widthMultiplier * 20,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: !training ?
                              ConstantColors.textColor :
                              ConstantColors.buttonColor,
                              width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(9)
                      ),
                      child: Center(
                        child: Text(
                          'Training',
                          style: CustomFonts.googleBodyFont(
                              color: !training ? Color(0xFF5A4371) :
                            ConstantColors.buttonColor,
                              fontSize: CustomSizes.bodyText * 1.3,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      if(!grooming){
                        setState(() {
                          grooming = true;
                        });
                      } else {
                        setState(() {
                          grooming = false;
                        });
                      }
                    },
                    child: Container(
                      height: SizeConfig.heightMultiplier * 4,
                      width: SizeConfig.widthMultiplier * 24.5,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: !grooming ?ConstantColors.textColor:
                              ConstantColors.buttonColor,
                              width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(9)
                      ),
                      child: Center(
                        child: Text(
                          'Grooming',
                          style: CustomFonts.googleBodyFont(
                              color: !grooming ?
                              Color(0xFF5A4371) : ConstantColors.buttonColor,
                              fontSize: CustomSizes.bodyText * 1.3,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      if(!cremation){
                        setState(() {
                          cremation = true;
                        });
                      } else {
                        setState(() {
                          cremation = false;
                        });
                      }
                    },
                    child: Container(
                      height: SizeConfig.heightMultiplier * 4,
                      width: SizeConfig.widthMultiplier * 25,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: !cremation ?
                              ConstantColors.textColor :
                              ConstantColors.buttonColor,
                              width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(9)
                      ),
                      child: Center(
                        child: Text(
                          'Cremation',
                          style: CustomFonts.googleBodyFont(
                              color: !cremation ?
                              Color(0xFF5A4371) : ConstantColors.buttonColor,
                              fontSize: CustomSizes.bodyText * 1.3,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      if(!animalshelter){
                        setState(() {
                          animalshelter = true;
                        });
                      } else {
                        setState(() {
                          animalshelter = false;
                        });
                      }
                    },
                    child: Container(
                      height: SizeConfig.heightMultiplier * 4,
                      width: SizeConfig.widthMultiplier * 33,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: !animalshelter ?
                              ConstantColors.textColor :
                              ConstantColors.buttonColor,
                              width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(9)
                      ),
                      child: Center(
                        child: Text(
                          'Animal Shelter',
                          style: CustomFonts.googleBodyFont(
                              color: !animalshelter ?
                              Color(0xFF5A4371) : ConstantColors.buttonColor,
                              fontSize: CustomSizes.bodyText * 1.3,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Divider(
              color: Color(0xff707070),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Vet Care:',
                style: CustomFonts.googleBodyFont(
                    color: const Color(0xFF5A4371),
                    fontSize: CustomSizes.headerText * 1.1,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1.5,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Wrap(
                spacing: SizeConfig.widthMultiplier * 2,
                runSpacing: SizeConfig.widthMultiplier * 2,
                children: [
                  InkWell(
                    onTap: (){
                      if(!vaccination){
                        setState(() {
                          vaccination = true;
                        });
                      } else {
                        setState(() {
                          vaccination = false;
                        });
                      }
                    },
                    child: Container(
                      height: SizeConfig.heightMultiplier * 4,
                      width: SizeConfig.widthMultiplier * 28,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: !vaccination ?
                              ConstantColors.textColor : ConstantColors.buttonColor,
                              width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(9)
                      ),
                      child: Center(
                        child: Text(
                          'Vaccination',
                          style: CustomFonts.googleBodyFont(
                              color: !vaccination ? Color(0xFF5A4371) :
                              ConstantColors.buttonColor,
                              fontSize: CustomSizes.bodyText * 1.3,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      if(!care){
                        setState(() {
                          care = true;
                        });
                      } else {
                        setState(() {
                          care = false;
                        });
                      }
                    },
                    child: Container(
                      height: SizeConfig.heightMultiplier * 4,
                      width: SizeConfig.widthMultiplier * 28,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: !care ? ConstantColors.textColor :
                              ConstantColors.buttonColor,
                              width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(9)
                      ),
                      child: Center(
                        child: Text(
                          'Dental Care',
                          style: CustomFonts.googleBodyFont(
                              color: !care ?
                              Color(0xFF5A4371) : ConstantColors.buttonColor,
                              fontSize: CustomSizes.bodyText * 1.3,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      if(!dental){
                        setState(() {
                          dental = true;
                        });
                      } else {
                        setState(() {
                          dental = false;
                        });
                      }
                    },
                    child: Container(
                      height: SizeConfig.heightMultiplier * 4,
                      width: SizeConfig.widthMultiplier * 27,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: !dental ?
                              ConstantColors.textColor :
                              ConstantColors.buttonColor,
                              width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(9)
                      ),
                      child: Center(
                        child: Text(
                          'Animal Care',
                          style: CustomFonts.googleBodyFont(
                              color: !dental ? Color(0xFF5A4371) :
                              ConstantColors.buttonColor,
                              fontSize: CustomSizes.bodyText * 1.3,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      if(!emergency){
                        setState(() {
                          emergency = true;
                        });
                      } else {
                        setState(() {
                          emergency = false;
                        });
                      }
                    },
                    child: Container(
                      height: SizeConfig.heightMultiplier * 4,
                      width: SizeConfig.widthMultiplier * 43,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: !emergency ?ConstantColors.textColor:
                              ConstantColors.buttonColor,
                              width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(9)
                      ),
                      child: Center(
                        child: Text(
                          'Emergency / Critical',
                          style: CustomFonts.googleBodyFont(
                              color: !emergency ?
                              Color(0xFF5A4371) : ConstantColors.buttonColor,
                              fontSize: CustomSizes.bodyText * 1.3,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      if(!more){
                        setState(() {
                          more = true;
                        });
                      } else {
                        setState(() {
                          more = false;
                        });
                      }
                    },
                    child: Container(
                      height: SizeConfig.heightMultiplier * 4,
                      width: SizeConfig.widthMultiplier * 20,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: !more ?
                              ConstantColors.textColor :
                              ConstantColors.buttonColor,
                              width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(9)
                      ),
                      child: Center(
                        child: Text(
                          'More...',
                          style: CustomFonts.googleBodyFont(
                              color: !more ?
                              Color(0xFF5A4371) : ConstantColors.buttonColor,
                              fontSize: CustomSizes.bodyText * 1.3,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Divider(
              color: Color(0xff707070),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Ratings:',
                style: CustomFonts.googleBodyFont(
                    color: const Color(0xFF5A4371),
                    fontSize: CustomSizes.headerText * 1.1,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1.5,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Wrap(
                spacing: SizeConfig.widthMultiplier * 2,
                runSpacing: SizeConfig.widthMultiplier * 2,
                children: [
                  InkWell(
                    onTap: (){
                      if(!five){
                        setState(() {
                          five = true;
                        });
                      } else {
                        setState(() {
                          five = false;
                        });
                      }
                    },
                    child: Container(
                      height: SizeConfig.heightMultiplier * 4,
                      width: SizeConfig.widthMultiplier * 28,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: !five ?
                              ConstantColors.textColor : ConstantColors.buttonColor,
                              width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(9)
                      ),
                      child: Center(
                        child: RatingBarIndicator(
                          rating: 5,
                          itemBuilder: (context, index) =>
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                          itemCount: 5,
                          itemSize: 18.0,
                          direction: Axis.horizontal,
                        )
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      if(!four){
                        setState(() {
                          four = true;
                        });
                      } else {
                        setState(() {
                          four = false;
                        });
                      }
                    },
                    child: Container(
                      height: SizeConfig.heightMultiplier * 4,
                      width: SizeConfig.widthMultiplier * 28,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: !four ?
                              ConstantColors.textColor : ConstantColors.buttonColor,
                              width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(9)
                      ),
                      child: Center(
                          child: RatingBarIndicator(
                            rating: 4,
                            itemBuilder: (context, index) =>
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                            itemCount: 5,
                            itemSize: 18.0,
                            direction: Axis.horizontal,
                          )
                      ),
                    ),
                  ),
                  InkWell(
          onTap: (){
            if(!three){
              setState(() {
                three = true;
              });
            } else {
              setState(() {
                three = false;
              });
            }
          },
          child: Container(
            height: SizeConfig.heightMultiplier * 4,
            width: SizeConfig.widthMultiplier * 25,
            decoration: BoxDecoration(
                border: Border.all(
                    color: !three ?
                    ConstantColors.textColor : ConstantColors.buttonColor,
                    width: 1.5
                ),
                borderRadius: BorderRadius.circular(9)
            ),
            child: Center(
                child: RatingBarIndicator(
                  rating: 3,
                  itemBuilder: (context, index) =>
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                  itemCount: 5,
                  itemSize: 18.0,
                  direction: Axis.horizontal,
                )
            ),
          ),
        ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Divider(
              color: Color(0xff707070),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Payment Method:',
                style: CustomFonts.googleBodyFont(
                    color: const Color(0xFF5A4371),
                    fontSize: CustomSizes.headerText * 1.1,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1.5,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Wrap(
                spacing: SizeConfig.widthMultiplier * 2,
                runSpacing: SizeConfig.widthMultiplier * 2,
                children: [
                  InkWell(
                    onTap: (){
                      if(!cc){
                        setState(() {
                          cc = true;
                        });
                      } else {
                        setState(() {
                          cc = false;
                        });
                      }
                    },
                    child: Container(
                      height: SizeConfig.heightMultiplier * 4,
                      width: SizeConfig.widthMultiplier * 32,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: !cc ?
                              ConstantColors.textColor : ConstantColors.buttonColor,
                              width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(9)
                      ),
                      child: Center(
                        child: Text(
                          'Cash or Credit',
                          style: CustomFonts.googleBodyFont(
                              color: !cc ? Color(0xFF5A4371) :
                              ConstantColors.buttonColor,
                              fontSize: CustomSizes.bodyText * 1.3,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      if(!co){
                        setState(() {
                          co = true;
                        });
                      } else {
                        setState(() {
                          co = false;
                        });
                      }
                    },
                    child: Container(
                      height: SizeConfig.heightMultiplier * 4,
                      width: SizeConfig.widthMultiplier * 28,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: !co ? ConstantColors.textColor :
                              ConstantColors.buttonColor,
                              width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(9)
                      ),
                      child: Center(
                        child: Text(
                          'Credit Only',
                          style: CustomFonts.googleBodyFont(
                              color: !co ?
                              Color(0xFF5A4371) : ConstantColors.buttonColor,
                              fontSize: CustomSizes.bodyText * 1.3,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      if(!f){
                        setState(() {
                          f = true;
                        });
                      } else {
                        setState(() {
                          f = false;
                        });
                      }
                    },
                    child: Container(
                      height: SizeConfig.heightMultiplier * 4,
                      width: SizeConfig.widthMultiplier * 30,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: !f ?
                              ConstantColors.textColor :
                              ConstantColors.buttonColor,
                              width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(9)
                      ),
                      child: Center(
                        child: Text(
                          'Financement',
                          style: CustomFonts.googleBodyFont(
                              color: !f ? Color(0xFF5A4371) :
                              ConstantColors.buttonColor,
                              fontSize: CustomSizes.bodyText * 1.3,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Divider(
              color: Color(0xff707070),
            )
          ],
        ),
      ),
    );
  }
}
