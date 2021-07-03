import 'package:farevet/Constants/ConstantColors.dart';
import 'package:farevet/Constants/Constants.dart';
import 'package:farevet/Constants/SizeConfig.dart';
import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  var text;
  HeaderText({
   this.text
});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: SizeConfig.heightMultiplier * 5
      ),
      child: Text(
        '$text',
        style: TextStyle(
          fontFamily: 'subway',
          fontSize: SizeConfig.textMultiplier * 3.2,
          color: ConstantColors.textColor,
          letterSpacing: 3
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
