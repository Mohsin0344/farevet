import 'package:farevet/Constants/ConstantColors.dart';
import 'package:farevet/Constants/Constants.dart';
import 'package:farevet/Constants/SizeConfig.dart';
import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  var text;
  var onPressed;
  var color;
  AppButton({
   this.text,
   this.onPressed,
    this.color
});
  @override
  _AppButtonState createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: InkWell(
        onTap: widget.onPressed,
        child: Container(
          alignment: Alignment.center,
          height: SizeConfig.heightMultiplier * 5.5,
          width: SizeConfig.widthMultiplier * 70,
          decoration: BoxDecoration(
            color: widget.color== null ? ConstantColors.buttonColor :
              widget.color,
            borderRadius: BorderRadius.circular(30)
          ),
          child: Text(widget.text,
          style: CustomFonts.googleBodyFont(
            color: Colors.white
          ),
          ),
        ),
      ),
    );
  }
}
