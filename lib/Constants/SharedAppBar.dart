import 'package:farevet/Constants/ConstantColors.dart';
import 'package:farevet/Constants/Constants.dart';
import 'package:farevet/Constants/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SharedAppBar extends StatelessWidget {
  var leadingIcon;
  var titleText;
  var trailingIcon;
  SharedAppBar({
   this.trailingIcon,
   this.titleText,
   this.leadingIcon
});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 6,
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                alignment: Alignment.centerLeft,
                child: Image.asset(leadingIcon,
                height: SizeConfig.imageSizeMultiplier * 5,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                '$titleText',
                style: CustomFonts.googleBodyFont(
                  color: ConstantColors.textColor,
                  fontSize: SizeConfig.textMultiplier * 1.6
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: Image.asset(trailingIcon,
              height: SizeConfig.imageSizeMultiplier * 5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
