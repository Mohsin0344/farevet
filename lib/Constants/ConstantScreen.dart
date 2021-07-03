import 'package:farevet/Constants/ConstantColors.dart';
import 'package:farevet/Constants/SizeConfig.dart';
import 'package:flutter/material.dart';

class ConstantScreen extends StatefulWidget {
  var childrens;
  var bottomNavBar;
  ConstantScreen({
    this.childrens,
    this.bottomNavBar
});
  @override
  _ConstantScreenState createState() => _ConstantScreenState();
}

class _ConstantScreenState extends State<ConstantScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: widget.bottomNavBar != null ? widget.bottomNavBar :
        Container(color: Colors.transparent, height: 0,),
        backgroundColor: ConstantColors.buttonColor,
        body: Padding(
          padding: EdgeInsets.only(
              top: SizeConfig.heightMultiplier * 10
          ),
          child: Container(
            decoration: BoxDecoration(
                color: ConstantColors.backgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)
                )
            ),
            child: ListView(
              padding: EdgeInsets.only(
                  left: SizeConfig.widthMultiplier * 7,
                  right: SizeConfig.widthMultiplier * 7,
                  top : SizeConfig.widthMultiplier * 6
              ),
              children: widget.childrens
            ),
          ),
        ),
      ),
    );
  }
}
