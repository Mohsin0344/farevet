import 'package:farevet/Constants/ConstantColors.dart';
import 'package:farevet/Constants/Constants.dart';
import 'package:farevet/Constants/SizeConfig.dart';
import 'package:farevet/Screens/PetOwner/ServicesPetOwner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:page_transition/page_transition.dart';

class HomeScreenViewPet extends StatefulWidget {
  @override
  _HomeScreenViewPetState createState() => _HomeScreenViewPetState();
}

class _HomeScreenViewPetState extends State<HomeScreenViewPet> {
  PageController _myPage = PageController(initialPage: 0);
  int pageIndex;
  int pageNum;

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageNum = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
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
              child: Container(
                child: ListView(
                  //shrinkWrap: true,
                 // physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.only(
                      top: SizeConfig.heightMultiplier * 7,
                    left: SizeConfig.widthMultiplier * 5,
                    right: SizeConfig.widthMultiplier * 5
                  ),
                  children: [
                    Text(
                      'Hey, Mia...',
                      style: CustomFonts.googleBodyFont(
                        color: Colors.grey,
                        fontSize: CustomSizes.bodyText * 1.25
                      ),
                    ),
                    Text(
                      'How Farevet can help you today?',
                      style: CustomFonts.googleBodyFont(
                          color: ConstantColors.textColor,
                          fontSize: CustomSizes.headerText,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2.5,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            setState(() {
                              _myPage.jumpToPage(0);
                            });
                          },
                          child: Container(
                            height: SizeConfig.heightMultiplier * 9,
                            width: SizeConfig.heightMultiplier * 7,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: pageNum == 0 ?
                                        ConstantColors.buttonColor:
                                            Color(0xffEBEBEB)
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Image.asset('images/icon1.png',
                                        color: pageNum == 0 ?
                                        Colors.white : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text('Veterinary',
                                      style: CustomFonts.googleBodyFont(
                                          fontSize: CustomSizes.bodyText * 0.8,
                                        color: pageNum == 0?
                                        Colors.black : Colors.grey
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              _myPage.jumpToPage(1);
                            });
                          },
                          child: Container(
                            height: SizeConfig.heightMultiplier * 9,
                            width: SizeConfig.heightMultiplier * 7,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: pageNum == 1 ?
                                        ConstantColors.buttonColor:
                                        Color(0xffEBEBEB)
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Image.asset('images/icon2.png',
                                        color: pageNum == 1 ?
                                        Colors.white : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text('Grooming',
                                      style: CustomFonts.googleBodyFont(
                                          fontSize: CustomSizes.bodyText * 0.8,
                                          color: pageNum == 1 ?
                                          Colors.black : Colors.grey
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              _myPage.jumpToPage(2);
                            });
                          },
                          child: Container(
                            height: SizeConfig.heightMultiplier * 9,
                            width: SizeConfig.heightMultiplier * 7,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: pageNum == 2 ?
                                        ConstantColors.buttonColor:
                                        Color(0xffEBEBEB)
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Image.asset('images/icon3.png',
                                        color: pageNum == 2 ?
                                        Colors.white : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text('Training',
                                      style: CustomFonts.googleBodyFont(
                                          fontSize: CustomSizes.bodyText * 0.8,
                                          color: pageNum == 2 ?
                                          Colors.black : Colors.grey
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              _myPage.jumpToPage(3);
                            });
                          },
                          child: Container(
                            height: SizeConfig.heightMultiplier * 9,
                            width: SizeConfig.heightMultiplier * 7,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: pageNum == 3 ?
                                        ConstantColors.buttonColor:
                                        Color(0xffEBEBEB)
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Image.asset('images/icon4.png',
                                        color: pageNum == 3 ?
                                        Colors.white : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text('Shelter',
                                      style: CustomFonts.googleBodyFont(
                                          fontSize: CustomSizes.bodyText * 0.8,
                                          color: pageNum == 3 ?
                                          Colors.black : Colors.grey
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              _myPage.jumpToPage(4);
                            });
                          },
                          child: Container(
                            height: SizeConfig.heightMultiplier * 9,
                            width: SizeConfig.heightMultiplier * 7,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: pageNum == 4 ?
                                        ConstantColors.buttonColor:
                                        Color(0xffEBEBEB)
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Image.asset('images/icon5.png',
                                        color: pageNum == 4 ?
                                        Colors.white : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text('Boarding',
                                      style: CustomFonts.googleBodyFont(
                                          fontSize: CustomSizes.bodyText * 0.8,
                                          color: pageNum == 4 ?
                                          Colors.black : Colors.grey
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 4,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.76,
                      child: PageView(
                        controller: _myPage,
                        onPageChanged: (pageIndex){
                          print(pageIndex);
                          setState(() {
                            pageNum = pageIndex;
                          });
                        },
                        children: [
                          NearbyVet(),
                          NearbyVet(),
                          NearbyVet(),
                          NearbyVet(),
                          NearbyVet()
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NearbyVet extends StatefulWidget {
  @override
  _NearbyVetState createState() => _NearbyVetState();
}

class _NearbyVetState extends State<NearbyVet> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Container(
          height: SizeConfig.heightMultiplier * 3.5,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset('images/locationarrow.png',
                    height: SizeConfig.imageSizeMultiplier * 5,
                    ))
              ),
              Expanded(
                flex: 10,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Nearby Veterinaries',
                    style: CustomFonts.googleBodyFont(
                      color: ConstantColors.textColor,
                      fontSize: CustomSizes.headerText,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                )
              ),
              Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'See all',
                    style: CustomFonts.googleBodyFont(
                      color: Colors.grey,
                      fontSize: CustomSizes.bodyText
                    ),
                  ),
                )
              )
            ],
          ),
        ),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 4,
          padding: EdgeInsets.only(
            // left: SizeConfig.widthMultiplier * 6.5,
            // right: SizeConfig.widthMultiplier * 6.5,
            top: SizeConfig.heightMultiplier * 2.5
          ),
          itemBuilder: (BuildContext context, index){
            return Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.heightMultiplier
              ),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: ServicesPetOwner()
                  )
                  );
                },
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
                                                  * 0.85,
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
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: SizeConfig.widthMultiplier
                                        ),
                                        child: Text(
                                          '1.5 km',
                                          style: CustomFonts.googleBodyFont(
                                            color: ConstantColors.textColor,
                                            fontSize: CustomSizes.bodyText * 0.80,
                                            fontWeight: FontWeight.w600
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ),
                            // Expanded(
                            //     child: Row(
                            //       children: [
                            //         Expanded(
                            //           child: Container(
                            //             decoration: BoxDecoration(
                            //                 shape: BoxShape.circle,
                            //                 color: Color(0xffB8B8B8),
                            //                 image: DecorationImage(
                            //                   image: AssetImage('images/dollar.png')
                            //                 )
                            //             ),
                            //           ),
                            //         ),
                            //         Expanded(
                            //           flex: 4,
                            //           child: Align(
                            //             alignment: Alignment.centerLeft,
                            //             child: Padding(
                            //               padding: EdgeInsets.only(
                            //                 left: SizeConfig.widthMultiplier * 1.5
                            //               ),
                            //               child: Text(
                            //                 '150',
                            //                 style: CustomFonts.googleBodyFont(
                            //                     color: ConstantColors.textColor,
                            //                     fontSize: CustomSizes.bodyText * 0.80
                            //                 ),
                            //               ),
                            //             ),
                            //           ),
                            //         )
                            //       ],
                            //     )
                            // ),
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
              ),
            );
          },
        )
      ],
    );
  }
}

