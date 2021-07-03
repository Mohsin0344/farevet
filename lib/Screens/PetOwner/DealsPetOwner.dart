import 'package:farevet/Constants/ConstantColors.dart';
import 'package:farevet/Constants/Constants.dart';
import 'package:farevet/Constants/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DealsPetOwner extends StatefulWidget {
  @override
  _DealsPetOwnerState createState() => _DealsPetOwnerState();
}

class _DealsPetOwnerState extends State<DealsPetOwner> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              color: ConstantColors.buttonColor,
              height: MediaQuery.of(context).size.height * 0.99999999999,
              width: MediaQuery.of(context).size.width * 0.9999999999999,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: SizeConfig.heightMultiplier * 4,
                        right: SizeConfig.widthMultiplier * 6
                    ),
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Image.asset('images/DP.png',
                          height: SizeConfig.imageSizeMultiplier * 8,
                        )),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: SizeConfig.heightMultiplier * 12
              ),
              child: Container(
                decoration: BoxDecoration(
                    color: ConstantColors.backgroundColor,
                    borderRadius: BorderRadius.circular(50)
                ),
                child: ListView(
                 // physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.only(
                      top: SizeConfig.heightMultiplier * 7,
                      left: SizeConfig.widthMultiplier * 5,
                      right: SizeConfig.widthMultiplier * 5
                  ),
                  children: [
                    Container(
                      height: SizeConfig.heightMultiplier * 5,
                      child: Row(
                        children: [
                          Expanded(
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Image.asset('images/Deals.png',
                                  height: SizeConfig.imageSizeMultiplier * 5,
                                )),
                          ),
                          Expanded(
                            flex: 10,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  bottom: SizeConfig.widthMultiplier
                                ),
                                child: Text(
                                  'Deals',
                                  style: CustomFonts.googleBodyFont(
                                      color: ConstantColors.textColor,
                                      fontSize: CustomSizes.headerText * 1.5,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.widthMultiplier * 1.3
                          ),
                          child: Container(
                            width: SizeConfig.widthMultiplier * 40,
                            decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        color: ConstantColors.textColor,
                                        width: 1.5
                                    )
                                )
                            ),
                          ),
                        )
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 1.3,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'These are the deals that are provided by different',
                        style: CustomFonts.googleBodyFont(
                          color: ConstantColors.textColor,
                          fontSize: CustomSizes.bodyText * 1.1,
                          letterSpacing: 0.5
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'veterinaries based on different services they proivde.',
                        style: CustomFonts.googleBodyFont(
                            color: ConstantColors.textColor,
                            fontSize: CustomSizes.bodyText * 1.1,
                            letterSpacing: 0.5
                        ),
                      ),
                    ),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, index){
                        return Padding(
                          padding: EdgeInsets.only(
                            top: SizeConfig.heightMultiplier
                          ),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: SizeConfig.heightMultiplier * 2.5,
                              horizontal: SizeConfig.widthMultiplier * 4
                            ),
                            height: SizeConfig.heightMultiplier * 17,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/backgroundstrip.png'),
                                fit: BoxFit.fill,
                              )
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Expanded(
                                                flex: 2,
                                                child: Align(
                                                  alignment: Alignment.centerLeft,
                                                  child: Text(
                                                    'Dr. Lorem Ipsum',
                                                    style: CustomFonts.googleBodyFont(
                                                        fontSize: CustomSizes.headerText
                                                            * 0.85,
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w500
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                  child: Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: Text(
                                                      'Bachelor of Veterinary Science',
                                                      style: CustomFonts.googleBodyFont(
                                                        color: Colors.white,
                                                        fontSize: CustomSizes.bodyText
                                                            * 0.78,
                                                      ),
                                                    ),
                                                  )
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Align(
                                                        alignment: Alignment.center,
                                                        child: RatingBarIndicator(
                                                          rating: 5,
                                                          itemBuilder: (context, index) =>
                                                              Icon(
                                                                Icons.star,
                                                                color: Colors.amber,
                                                              ),
                                                          itemCount: 5,
                                                          itemSize: 10.0,
                                                          direction: Axis.horizontal,
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 3,
                                                      child: Align(
                                                        alignment: Alignment.centerLeft,
                                                        child: Padding(
                                                          padding: EdgeInsets.only(
                                                            left: SizeConfig.widthMultiplier
                                                          ),
                                                          child: Text(
                                                            '5.0(123 Reviews)',
                                                            style: CustomFonts.googleBodyFont(
                                                                color: Colors.white,
                                                                fontSize: CustomSizes.bodyText
                                                                    * 0.65,
                                                                fontWeight: FontWeight.w500
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            '70% off',
                                            style: CustomFonts.googleBodyFont(
                                              color: Colors.white,
                                              fontSize: CustomSizes.headerText * 1.7,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        )
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Image.asset('images/network.png')),
                                      ),
                                      Expanded(
                                        flex: 16,
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: 4,
                                            itemBuilder: (context, index){
                                              return Padding(
                                                padding: EdgeInsets.only(
                                                  left: SizeConfig.widthMultiplier
                                                ),
                                                child: Align(
                                                  alignment: Alignment.centerLeft,
                                                  child: Container(
                                                    height: SizeConfig.heightMultiplier * 2,
                                                    width: SizeConfig.widthMultiplier * 12,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xffFFFFFF).withOpacity(0.60),
                                                      borderRadius: BorderRadius.circular(12)
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'Grooming',
                                                        style: CustomFonts.googleBodyFont(
                                                          color: ConstantColors.textColor,
                                                          fontSize: CustomSizes.bodyText * 0.6
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                                Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 4,
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              '10 Years of Experience',
                                              style: CustomFonts.googleBodyFont(
                                                  color: Color(0xffB8B8B8),
                                                  fontSize: CustomSizes.bodyText * 0.90,
                                                  fontWeight: FontWeight.w500
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Colors.white.withOpacity(0.3)
                                                    ),
                                                    child: Center(
                                                      child: Image.asset('images/location.png',
                                                      color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 4,
                                                  child: Center(
                                                    child: Text(
                                                      '1.5 km',
                                                      style: CustomFonts.googleBodyFont(
                                                          color: Colors.white,
                                                          fontSize: CustomSizes.bodyText * 0.80
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                        ),
                                        Expanded(
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Colors.white.withOpacity(0.3),
                                                    ),
                                                    child: Center(
                                                      child: Image.asset('images/dollar.png',
                                                      color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 4,
                                                  child: Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: SizeConfig.widthMultiplier * 1.5
                                                      ),
                                                      child: Text(
                                                        '150',
                                                        style: CustomFonts.googleBodyFont(
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: CustomSizes.bodyText
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                        ),
                                      ],
                                    )
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Image.asset('images/clock.png',
                                            height: SizeConfig.imageSizeMultiplier * 3,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 20,
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'Monday - Friday at 9:00AM - 4:00PM',
                                            style: CustomFonts.googleBodyFont(
                                                color: ConstantColors.textColor,
                                                fontSize: CustomSizes.bodyText * 0.70
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
