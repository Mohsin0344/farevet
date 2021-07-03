import 'package:farevet/Constants/ConstantColors.dart';
import 'package:farevet/Constants/Constants.dart';
import 'package:farevet/Constants/SizeConfig.dart';
import 'package:farevet/Screens/PetOwner/Communityview.dart';
import 'package:farevet/Screens/PetOwner/HomeScreenView.dart';
import 'package:farevet/Screens/PetOwner/SearchPetOwner.dart';
import 'package:flutter/material.dart';
import 'package:farevet/Screens/PetOwner/DealsPetOwner.dart';
import 'package:farevet/Screens/PetOwner/BookingsPetOwner.dart';

class PetOwnerHome extends StatefulWidget {
  @override
  _PetOwnerHomeState createState() => _PetOwnerHomeState();
}

class _PetOwnerHomeState extends State<PetOwnerHome> {
  var padding = 8.0;
  PageController _myPage = PageController(initialPage: 0);
  bool butVisibility1 = true;
  bool butVisibility2 = false;
  bool butVisibility3 = false;
  bool butVisibility4 = false;
  bool butVisibility5 = false;
  int pageIndex;

  void initState(){
    butVisibility1 = true;
    butVisibility2 = false;
    butVisibility3 = false;
    butVisibility4 = false;
    butVisibility5 = false;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColors.backgroundColor,
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: Color(0xffEBEBEB),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12)
            )
          ),
          child: Container(
            height: 50,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        _myPage.jumpToPage(0);
                        butVisibility1 = true;
                        butVisibility2 = false;
                        butVisibility3 = false;
                        butVisibility4 = false;
                        butVisibility5 = false;
                      });
                    },
                    child: Column(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset('images/nav1.png',
                              height: SizeConfig.imageSizeMultiplier * 5,
                                color: butVisibility1 ?
                                ConstantColors.buttonColor :
                                ConstantColors.textColor,
                              )),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Home',
                              style: CustomFonts.googleBodyFont(
                                color: butVisibility1 ?
                                    ConstantColors.buttonColor :
                                    ConstantColors.textColor,
                                fontSize: CustomSizes.bodyText
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        _myPage.jumpToPage(1);
                        butVisibility1 = false;
                        butVisibility2 = true;
                        butVisibility3 = false;
                        butVisibility4 = false;
                        butVisibility5 = false;
                      });
                    },
                      child: Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Image.asset('images/nav2.png',
                                  height: SizeConfig.imageSizeMultiplier * 5.5,
                                  color: butVisibility2 ?
                                  ConstantColors.buttonColor :
                                  ConstantColors.textColor,
                                )),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Community',
                                style: CustomFonts.googleBodyFont(
                                    color: butVisibility2 ?
                                    ConstantColors.buttonColor :
                                    ConstantColors.textColor,
                                    fontSize: CustomSizes.bodyText
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        _myPage.jumpToPage(2);
                        butVisibility1 = false;
                        butVisibility2 = false;
                        butVisibility3 = true;
                        butVisibility4 = false;
                        butVisibility5 = false;
                      });
                    },
                      child: Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Image.asset('images/nav3.png',
                                  height: SizeConfig.imageSizeMultiplier * 5.5,
                                  color: butVisibility3 ?
                                  ConstantColors.buttonColor :
                                  ConstantColors.textColor,
                                )),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Search',
                                style: CustomFonts.googleBodyFont(
                                    color: butVisibility3 ?
                                    ConstantColors.buttonColor :
                                    ConstantColors.textColor,
                                    fontSize: CustomSizes.bodyText
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        _myPage.jumpToPage(3);
                        butVisibility1 = false;
                        butVisibility2 = false;
                        butVisibility3 = false;
                        butVisibility4 = true;
                        butVisibility5 = false;
                      });
                    },
                      child: Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Image.asset('images/nav4.png',
                                  height: SizeConfig.imageSizeMultiplier * 5.5,
                                  color: butVisibility4 ?
                                  ConstantColors.buttonColor :
                                  ConstantColors.textColor,
                                )),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Deals',
                                style: CustomFonts.googleBodyFont(
                                    color: butVisibility4 ?
                                    ConstantColors.buttonColor :
                                    ConstantColors.textColor,
                                    fontSize: CustomSizes.bodyText
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        _myPage.jumpToPage(4);
                        butVisibility1 = false;
                        butVisibility2 = false;
                        butVisibility3 = false;
                        butVisibility4 = false;
                        butVisibility5 = true;
                      });
                    },
                      child: Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Image.asset('images/nav5.png',
                                  height: SizeConfig.imageSizeMultiplier * 5.5,
                                  color: butVisibility5 ?
                                  ConstantColors.buttonColor :
                                  ConstantColors.textColor,
                                )),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Bookings',
                                style: CustomFonts.googleBodyFont(
                                    color: butVisibility5 ?
                                    ConstantColors.buttonColor :
                                    ConstantColors.textColor,
                                    fontSize: CustomSizes.bodyText
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                  ),
                ),
              ],
            ),
          ),
        ),
        body: PageView(
          controller: _myPage,
          onPageChanged: (pageIndex) {
            print('Page Changes to index $pageIndex');
            if(pageIndex == 0){
              setState(() {
                butVisibility1 = true;
                butVisibility2 = false;
                butVisibility3 = false;
                butVisibility4 = false;
              });

            }else if(pageIndex == 1){
              setState(() {
                butVisibility1 = false;
                butVisibility2 = true;
                butVisibility3 = false;
                butVisibility4 = false;
              });

            } else if(pageIndex == 2){
              setState(() {
                butVisibility1 = false;
                butVisibility2 = false;
                butVisibility3 = true;
                butVisibility4 = false;
              });

            }else{
              setState(() {
                butVisibility1 = false;
                butVisibility2 = false;
                butVisibility3 = false;
                butVisibility4 = true;
              });
            }
          },
          children: <Widget>[
            HomeScreenViewPet(),
            CommunityPetOwner(),
            SearchPetOwner(),
            DealsPetOwner(),
            BookingsPetOwner()
          ],
          physics: NeverScrollableScrollPhysics(), // Comment this if you need to use Swipe.
        ),
        extendBody: true,
      ),
    );
  }
}
