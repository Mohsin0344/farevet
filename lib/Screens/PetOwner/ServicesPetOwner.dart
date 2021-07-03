import 'package:farevet/Constants/ConstantColors.dart';
import 'package:farevet/Constants/ConstantScreen.dart';
import 'package:farevet/Constants/Constants.dart';
import 'package:farevet/Constants/SizeConfig.dart';
import 'package:farevet/Screens/PetOwner/CalendarScreenPetOwner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ServicesPetOwner extends StatefulWidget {
  @override
  _ServicesPetOwnerState createState() => _ServicesPetOwnerState();
}

class _ServicesPetOwnerState extends State<ServicesPetOwner> {
  var selectedColor = ConstantColors.buttonColor;
  var unsColor = Color(0xffC8C8C8);
  var listing = [false,false,false,false,false];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listing = [false,false,false,false,false];
  }

  @override
  Widget build(BuildContext context) {
    return ConstantScreen(
      childrens: [
        Container(
          height: SizeConfig.heightMultiplier * 14,
          child: Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Image.asset('images/BACK.png',
                    height: SizeConfig.imageSizeMultiplier * 5,
                    ),
                  ),
                )
              ),
              Expanded(
                flex: 4,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: SizeConfig.widthMultiplier * 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('images/doctor.jpg'),
                        fit: BoxFit.cover
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.16),
                          offset: Offset(0, 3.0),
                          blurRadius: 17.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Image.asset('images/OPTIONS.png',
                      height: SizeConfig.imageSizeMultiplier * 5,
                    ),
                  )
              ),
            ],
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 0.5,
        ),
        Center(
          child: Container(
            width: SizeConfig.widthMultiplier * 50,
            height: SizeConfig.heightMultiplier * 3,
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Dr. Lorem Ipsum',
                      style: CustomFonts.googleBodyFont(
                        color: ConstantColors.textColor,
                        fontSize: CustomSizes.headerText,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  )
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: SizeConfig.widthMultiplier
                      ),
                      child: Container(
                        width: SizeConfig.widthMultiplier * 3,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                            size: SizeConfig.imageSizeMultiplier * 2,
                          ),
                        ),
                      ),
                    ),
                  )
                )
              ],
            ),
          )
        ),
        Center(
          child: Text(
            'Bachelor of veterinary science',
            style: CustomFonts.googleBodyFont(
              color: Colors.grey,
              fontSize: CustomSizes.bodyText * 1.1,
            ),
          ),
        ),
        Center(
          child: Text(
            'Bissonet Southampton Veterinary Clinic',
            style: CustomFonts.googleBodyFont(
              color: Colors.grey,
              fontSize: CustomSizes.bodyText * 1.1,
            ),
          ),
        ),
        Center(
          child: Container(
            width: SizeConfig.widthMultiplier * 32,
            height: SizeConfig.heightMultiplier * 4,
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                  child: Align(
                      alignment: Alignment.center,
                      child: Image.asset('images/maps.png',
                      height: SizeConfig.imageSizeMultiplier * 20,
                      ))
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                  )
                ),
                Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.center,
                    child: RichText(
                     text: TextSpan(
                       text: '4.8',
                       style: CustomFonts.googleBodyFont(
                           color: ConstantColors.textColor,
                           fontSize: CustomSizes.headerText,
                           fontWeight: FontWeight.w600
                       ),
                       children: [
                         TextSpan(
                           text: ' (123)',
                           style: CustomFonts.googleBodyFont(
                               color: ConstantColors.textColor,
                               fontSize: CustomSizes.bodyText,
                               fontWeight: FontWeight.w500
                           ),
                         )
                       ]
                     ),
                    )
                  )
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 0.25,
        ),
        Row(
          children: [
            Expanded(
              flex: 6,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Reviews',
                  style: CustomFonts.googleBodyFont(
                    color: Color(0xff097CFF),
                    fontSize: CustomSizes.bodyText * 1.2,
                    fontWeight: FontWeight.w500
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: SizeConfig.widthMultiplier * 2
                    ),
                    child: Image.asset('images/rate.png',
                      height: SizeConfig.imageSizeMultiplier * 5,
                    ),
                  )
              ),
            )
          ],
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier,
        ),
        Center(
          child: RichText(
            text: TextSpan(
                text: 'Email:',
                style: CustomFonts.googleBodyFont(
                    color: ConstantColors.textColor,
                    fontSize: CustomSizes.bodyText * 1.3,
                    fontWeight: FontWeight.w500
                ),
                children: [
                  TextSpan(
                    text: '  info@farevet.com',
                    style: CustomFonts.googleBodyFont(
                        color: ConstantColors.textColor,
                        fontSize: CustomSizes.bodyText * 1.3,
                        fontWeight: FontWeight.w500
                    ),
                  )
                ]
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 0.5,
        ),
        Center(
          child: RichText(
            text: TextSpan(
                text: 'Phone:',
                style: CustomFonts.googleBodyFont(
                    color: ConstantColors.textColor,
                    fontSize: CustomSizes.bodyText * 1.3,
                    fontWeight: FontWeight.w500
                ),
                children: [
                  TextSpan(
                    text: '  (905) 989-500',
                    style: CustomFonts.googleBodyFont(
                        color: ConstantColors.textColor,
                        fontSize: CustomSizes.bodyText * 1.3,
                        fontWeight: FontWeight.w500
                    ),
                  )
                ]
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                          child: Image.asset('images/network.png',
                            height: SizeConfig.imageSizeMultiplier * 6,
                          )
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Services:',
                          style: CustomFonts.googleBodyFont(
                            color: ConstantColors.textColor,
                            fontSize: CustomSizes.headerText,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Report Cost',
                        style: CustomFonts.googleBodyFont(
                          color: ConstantColors.textColor,
                          fontSize: CustomSizes.bodyText
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Image.asset('images/report.png',
                        height: SizeConfig.imageSizeMultiplier * 4,
                        )),
                  )
                ],
              )
            )
          ],
        ),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 5,
          shrinkWrap: true,
          itemBuilder: (context, index){
            return Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.heightMultiplier
              ),
              child: InkWell(
                onTap: (){
                  if(!listing[index]){
                    setState(() {
                      listing[index] = true;
                    });
                  } else {
                    setState(() {
                      listing[index] = false;
                    });
                  }
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.heightMultiplier
                  ),
                  height: SizeConfig.heightMultiplier * 10,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Color(0xff707070).withOpacity(0.4)
                      )
                    )
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xffEBEBEB)
                          ),
                          child: Image.asset('images/icon3.png',
                          height: SizeConfig.imageSizeMultiplier * 12,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.widthMultiplier * 2
                          ),
                          child: Container(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Training',
                                      style: CustomFonts.googleBodyFont(
                                        color: ConstantColors.textColor,
                                        fontSize: CustomSizes.headerText * 1,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.8
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: SizeConfig.heightMultiplier * 0.30,
                                        left: SizeConfig.widthMultiplier
                                      ),
                                      child: Text(
                                        'Lorem ipsum Lorem ipsum Lorem ipsum'
                                            'Lorem ipsum Lorem ipsum Lorem ipsum'
                                            'Lorem ipsum Lorem ipsum',
                                        style: CustomFonts.googleBodyFont(
                                            color: ConstantColors.textColor,
                                            fontSize: CustomSizes.bodyText,
                                          height: 1.0
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 3,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  '\$59.99',
                                  style: CustomFonts.googleBodyFont(
                                    color: ConstantColors.textColor,
                                    fontSize: CustomSizes.bodyText,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                              )
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: SizeConfig.heightMultiplier * 1,
                                  left: SizeConfig.widthMultiplier * 1,
                                  right: SizeConfig.widthMultiplier * 1
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: listing[index] ?
                                    ConstantColors.buttonColor : unsColor,
                                    borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Select',
                                      style: CustomFonts.googleBodyFont(
                                        color: listing[index] ? Colors.white :
                                          Colors.grey,
                                        fontSize: CustomSizes.bodyText
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
      bottomNavBar: Container(
        height: SizeConfig.heightMultiplier * 8,
        decoration: BoxDecoration(
          color: Color(0xffEBEBEB),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(12),
            topLeft: Radius.circular(12)
          )
        ),
        child: Row(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    text: 'Total:',
                    style: CustomFonts.googleBodyFont(
                      color: ConstantColors.textColor,
                      fontSize: CustomSizes.headerText * 1.2,
                      fontWeight: FontWeight.w500
                    ),
                    children: [
                      TextSpan(
                        text: '  \$200',
                        style: CustomFonts.googleBodyFont(
                            color: ConstantColors.textColor,
                            fontSize: CustomSizes.headerText * 1.2,
                            fontWeight: FontWeight.w500
                        ),
                      )
                    ]
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 7,
                  vertical: SizeConfig.heightMultiplier * 1.3
                ),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: CalendarScreenPetOwner()
                    )
                    );
                  },
                  child: Container(
                   decoration: BoxDecoration(
                     color: ConstantColors.buttonColor,
                     borderRadius: BorderRadius.circular(12)
                   ),
                    child: Center(
                      child: Text(
                        'Next',
                        style: CustomFonts.googleBodyFont(
                          color: Colors.white,
                          fontSize: CustomSizes.bodyText * 1.8,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
