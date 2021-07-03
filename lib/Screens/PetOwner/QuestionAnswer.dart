import 'package:farevet/Constants/ConstantColors.dart';
import 'package:farevet/Constants/Constants.dart';
import 'package:farevet/Constants/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionAnswer extends StatefulWidget {
  @override
  _QuestionAnswerState createState() => _QuestionAnswerState();
}

class _QuestionAnswerState extends State<QuestionAnswer> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: ConstantColors.backgroundColor,
        body: Stack(
          children: [
            ListView(
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 4,
                  vertical: SizeConfig.heightMultiplier * 4
              ),
              children: [
                Container(
                  height: SizeConfig.heightMultiplier * 6,
                  child: Row(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: InkWell(
                            onTap:(){
                              Navigator.pop(context);
                            },
                            child: Image.asset('images/cancel.png',
                              height: SizeConfig.imageSizeMultiplier * 5,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: SizeConfig.widthMultiplier * 2
                            ),
                            child: Text(
                              'Question/Answers',
                              style: CustomFonts.googleBodyFont(
                                  fontSize: CustomSizes.headerText * 0.85,
                                  color: ConstantColors.textColor,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Image.asset('images/help.png',
                            height: SizeConfig.imageSizeMultiplier * 5,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 3,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Question',
                    style: CustomFonts.googleBodyFont(
                        color: ConstantColors.textColor,
                        fontSize: CustomSizes.headerText,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: SizeConfig.heightMultiplier * 1.5
                  ),
                  child: Container(
                    padding: EdgeInsets.only(
                        top: SizeConfig.heightMultiplier * 1
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
                                    fontStyle: FontStyle.italic
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
                              Expanded(
                                flex: 4,
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Image.asset('images/questioncum.png',
                                      height: SizeConfig.imageSizeMultiplier * 3,
                                    )),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: SizeConfig.widthMultiplier
                                    ),
                                    child: Text(
                                      'Answer',
                                      style: CustomFonts.googleBodyFont(
                                          fontSize: CustomSizes.bodyText,
                                          fontWeight: FontWeight.w600
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
                SizedBox(
                  height: SizeConfig.heightMultiplier * 3,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Answers',
                    style: CustomFonts.googleBodyFont(
                        color: ConstantColors.textColor,
                        fontSize: CustomSizes.headerText,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, index){
                    return Padding(
                      padding: EdgeInsets.only(
                          top: SizeConfig.heightMultiplier * 1.5
                      ),
                      child: Container(
                        padding: EdgeInsets.only(
                            top: SizeConfig.heightMultiplier * 1,
                            right: SizeConfig.widthMultiplier * 4
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        height: SizeConfig.heightMultiplier * 10,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
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
                                    'Lorem Ipsum Lorem Ipsum Lorem',
                                    style: CustomFonts.googleBodyFont(
                                        fontSize: CustomSizes.bodyText,
                                        fontStyle: FontStyle.italic
                                    ),
                                    // overflow: TextOverflow.ellipsis,
                                    //maxLines: 1,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.centerRight,
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
            Align(
              alignment: Alignment.bottomCenter,
              child: TextField(
                style: CustomFonts.googleBodyFont(
                  color: ConstantColors.textColor,
                  fontSize: CustomSizes.bodyText,
                ),
                decoration: InputDecoration(
                  hintText: 'Type your answer here...',
                  hintStyle: CustomFonts.googleBodyFont(
                    color: Colors.grey,
                    fontSize: CustomSizes.bodyText,
                  ),
                  prefixIcon: Padding(
                      padding: EdgeInsets.all(15),
                      child: Image.asset('images/keyboard.png',
                      height: SizeConfig.imageSizeMultiplier ,
                      )),
                  suffixIcon: Padding(
                      padding: EdgeInsets.all(15),
                      child: Image.asset('images/send.png',
                        height: SizeConfig.imageSizeMultiplier * 2 ,
                      )),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.transparent,
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
