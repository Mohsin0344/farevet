import 'package:farevet/Constants/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFonts {

  static googleHeaderFont({var color, var fontSize, var fontWeight, var fontStyle, var letterSpacing, var height, var decoration}) {
    return GoogleFonts.montserrat(
        textStyle: TextStyle(
          height: height,
          color: color,
          letterSpacing: letterSpacing,
          decoration: decoration,
        ),
        fontSize: fontSize != null ? fontSize.toDouble() : null,
        fontWeight: fontWeight,
        fontStyle: fontStyle
    );
  }

  // static googleBodyFont({var color, var fontSize, var fontWeight, var fontStyle, var letterSpacing, var height, var decoration}) {
  //   return GoogleFonts.montserrat(
  //       textStyle: TextStyle(
  //         height: height,
  //         color: color,
  //         letterSpacing: letterSpacing,
  //         decoration: decoration,
  //       ),
  //       fontSize: fontSize != null ? fontSize.toDouble() : null,
  //       fontWeight: fontWeight,
  //       fontStyle: fontStyle
  //   );
  // }

  static googleBodyFont({var color, var fontSize, var fontWeight, var fontStyle, var letterSpacing, var height, var decoration}) {
    return TextStyle(
      fontFamily: 'san',
          height: height,
          color: color,
          letterSpacing: letterSpacing,
          decoration: decoration,
        fontSize: fontSize != null ? fontSize.toDouble() : null,
        fontWeight: fontWeight,
        fontStyle: fontStyle
    );
  }
}


class CustomSizes {
  static final leftPadding = SizeConfig.widthMultiplier;
  static final rightPadding = SizeConfig.widthMultiplier;
  static final topPadding = SizeConfig.widthMultiplier;
  static final bottomPadding = SizeConfig.widthMultiplier;
  static final bodyText = SizeConfig.textMultiplier * 1.3;
  static final headerText = SizeConfig.textMultiplier * 2.0;
}


