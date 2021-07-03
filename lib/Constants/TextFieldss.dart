import 'package:farevet/Constants/ConstantColors.dart';
import 'package:farevet/Constants/Constants.dart';
import 'package:farevet/Constants/SizeConfig.dart';
import 'package:flutter/material.dart';

class TextFields extends StatefulWidget {
  var icon;
  var hintText;
  bool isObscure;
  TextFields({
   this.icon,
   this.hintText,
   this.isObscure
});
  @override
  _TextFieldsState createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: SizeConfig.widthMultiplier * 70,
       height: SizeConfig.heightMultiplier * 5,
        child: Center(
          child: TextField(
            cursorColor: ConstantColors.textColor,
            obscureText: widget.isObscure,
            style: CustomFonts.googleBodyFont(
              color: ConstantColors.textColor,
              fontSize: CustomSizes.bodyText
            ),
              decoration: InputDecoration(
                filled: true,
                fillColor: ConstantColors.textFieldColor,
                labelText: widget.hintText,
                  labelStyle: CustomFonts.googleBodyFont(
                    color: ConstantColors.textColor,
                    fontSize: CustomSizes.bodyText
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(12),
                    child: Image.asset(widget.icon),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          color: ConstantColors.textFieldBorderColor
                      )
                  ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                        color: ConstantColors.textFieldBorderColor
                    )
                ),
              ),
          ),
        ),
      ),
    );
  }
}
