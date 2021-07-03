import 'package:farevet/Constants/ConstantColors.dart';
import 'package:farevet/Constants/Constants.dart';
import 'package:farevet/Constants/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BookingsPetOwner extends StatefulWidget {
  @override
  _BookingsPetOwnerState createState() => _BookingsPetOwnerState();
}

class _BookingsPetOwnerState extends State<BookingsPetOwner> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        extendBody: true,
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
                    // color: Colors.red,
                    borderRadius: BorderRadius.circular(50)
                ),
                child: ListView(
                  // shrinkWrap: true,
                 // physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.only(
                      top: SizeConfig.heightMultiplier * 7,
                      left: SizeConfig.widthMultiplier * 5,
                      right: SizeConfig.widthMultiplier * 5,
                    bottom: SizeConfig.heightMultiplier * 7
                  ),
                  children: [
                    Container(
                      height: SizeConfig.heightMultiplier * 5,
                      child: Row(
                        children: [
                          Expanded(
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Image.asset('images/nav5.png',
                                  height: SizeConfig.imageSizeMultiplier * 10,
                                )),
                          ),
                          Expanded(
                            flex: 6,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Bookings',
                                style: CustomFonts.googleBodyFont(
                                    color: ConstantColors.textColor,
                                    fontSize: CustomSizes.headerText * 1.2,
                                    fontWeight: FontWeight.w500
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
                            width: SizeConfig.widthMultiplier * 50,
                            decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        color: ConstantColors.textColor,
                                        width: 1.5
                                    )
                                )
                            ),
                          ),
                        )),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.widthMultiplier,
                          top: SizeConfig.heightMultiplier
                        ),
                        child: Text('Your Appointments!',
                        style: CustomFonts.googleBodyFont(
                          color: ConstantColors.textColor,
                          fontSize: CustomSizes.bodyText * 1.25
                        ),
                        ),
                      ),
                    ),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      padding: EdgeInsets.only(
                          // left: SizeConfig.widthMultiplier * 2,
                          // right: SizeConfig.widthMultiplier * 2,
                          top: SizeConfig.heightMultiplier * 2.5
                      ),
                      itemBuilder: (BuildContext context, index){
                        return Padding(
                          padding: EdgeInsets.only(
                              top: SizeConfig.heightMultiplier
                          ),
                          child: Container(
                            padding: EdgeInsets.only(
                                left: SizeConfig.widthMultiplier * 3,
                                top: SizeConfig.heightMultiplier,
                                bottom: SizeConfig.heightMultiplier
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.02),
                                  offset: Offset(0, 3.0),
                                  blurRadius: 15.0,
                                ),
                              ],
                            ),
                            height: SizeConfig.heightMultiplier * 15,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage('images/Rectangle 9.png')
                                                  ),
                                                  borderRadius: BorderRadius.circular(12)
                                              ),
                                            )
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Container(
                                            padding: EdgeInsets.only(
                                                top: SizeConfig.heightMultiplier * 0.10,
                                                left: SizeConfig.widthMultiplier * 2
                                            ),
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: Text(
                                                      'Dr. Lorem Ipsum',
                                                      style: CustomFonts.googleBodyFont(
                                                          fontSize: CustomSizes.headerText
                                                              * 0.85,
                                                          color: ConstantColors.textColor,
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
                                                          color: Colors.grey,
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
                                                          alignment: Alignment.topLeft,
                                                          child: RatingBarIndicator(
                                                            rating: 2.75,
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
                                                          alignment: Alignment.topLeft,
                                                          child: Text(
                                                            '5.0(123 Reviews)',
                                                            style: CustomFonts.googleBodyFont(
                                                                color: ConstantColors.textColor,
                                                                fontSize: CustomSizes.bodyText
                                                                    * 0.65,
                                                                fontWeight: FontWeight.w500
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
                                        )
                                      ],
                                    ),
                                  ),
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
                                                        color: Color(0xffB8B8B8)
                                                    ),
                                                    child: Center(
                                                      child: Image.asset('images/location.png'),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 4,
                                                  child: Center(
                                                    child: Text(
                                                      '1.5 km',
                                                      style: CustomFonts.googleBodyFont(
                                                          color: ConstantColors.textColor,
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
                                                        color: Color(0xffB8B8B8),
                                                        image: DecorationImage(
                                                            image: AssetImage('images/dollar.png')
                                                        )
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
                                                            color: ConstantColors.textColor,
                                                            fontSize: CustomSizes.bodyText * 0.80
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
