import 'package:farevet/Constants/ConstantColors.dart';
import 'package:farevet/Constants/Constants.dart';
import 'package:farevet/Constants/SizeConfig.dart';
import 'package:farevet/Screens/PetOwner/QuestionAnswer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class CommunityPetOwner extends StatefulWidget {
  @override
  _CommunityPetOwnerState createState() => _CommunityPetOwnerState();
}

class _CommunityPetOwnerState extends State<CommunityPetOwner> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        floatingActionButton: Padding(
          padding: EdgeInsets.only(
            bottom: SizeConfig.heightMultiplier * 5
          ),
          child: Container(
            height: SizeConfig.heightMultiplier * 5,
            width: SizeConfig.heightMultiplier * 5,
            decoration: BoxDecoration(
                color: ConstantColors.buttonColor,
                shape: BoxShape.circle
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
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
                  // shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
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
                                child: Image.asset('images/Cummunity.png',
                                height: SizeConfig.imageSizeMultiplier * 10,
                                )),
                          ),
                          Expanded(
                            flex: 6,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Community',
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
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      padding: EdgeInsets.only(
                        top: SizeConfig.heightMultiplier * 3
                      ),
                      itemBuilder: (BuildContext context, index){
                        return Padding(
                          padding: EdgeInsets.only(
                            top: SizeConfig.heightMultiplier * 1.5
                          ),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: QuestionAnswer()
                              )
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.only(
                                  top: SizeConfig.heightMultiplier * 1,
                                left: SizeConfig.widthMultiplier * 2,
                                right: SizeConfig.widthMultiplier * 2
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)
                              ),
                              height: SizeConfig.heightMultiplier * 10,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                image: AssetImage('images/avatar.png')
                                              )
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 6,
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Sara Hicklestone',
                                              style: CustomFonts.googleBodyFont(
                                                fontSize: CustomSizes.headerText
                                                  * 0.55,
                                                fontWeight: FontWeight.w500
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: SizeConfig.widthMultiplier * 12
                                        ),
                                        child: Text(
                                          'My Dog is not eating, can you guys help?',
                                          style: CustomFonts.googleBodyFont(
                                            fontSize: CustomSizes.bodyText,
                                           // fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Image.asset('images/questioncum.png',
                                                height: SizeConfig.imageSizeMultiplier * 3,
                                              )),
                                        ),
                                        Expanded(
                                          flex: 16,
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Answer',
                                              style: CustomFonts.googleBodyFont(
                                                  fontSize: CustomSizes.bodyText,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 6,
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                left: SizeConfig.widthMultiplier * 4
                                              ),
                                              child: Text(
                                                '06/08/2021',
                                                style: CustomFonts.googleBodyFont(
                                                    fontSize: CustomSizes.bodyText
                                                        * 0.55,
                                                    fontWeight: FontWeight.w300
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
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
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
