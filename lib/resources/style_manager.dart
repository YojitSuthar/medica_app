import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medica/resources/resources.dart';

class FontWeightManager {
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight super_bold = FontWeight.w900;
}

//Size,family
TextStyle fontSizeFamilyTextStyle(double fontSize, String family) {
  return TextStyle(fontSize: fontSize.sp, fontFamily: family);
}

//Size,family,Weight
TextStyle fontSizeFamilyWeightTextStyle(
    double fontSize, String fontFamily, FontWeight weight) {
  return TextStyle(
      fontSize: fontSize.sp, fontFamily: fontFamily, fontWeight: weight);
}

//family,Weight,
TextStyle fontFamilyWeightTextStyle(String family, FontWeight weight) {
  return TextStyle(fontWeight: weight, fontFamily: family);
}

//weight,Color
TextStyle fontWeightColorTextStyle(FontWeight weight, Color color) {
  return TextStyle(fontWeight: weight, color: color);
}

//weight,size,color
TextStyle fontWeightSizeColorTextStyle(
    FontWeight weight, double fontSize, Color color) {
  return TextStyle(fontWeight: weight, color: color, fontSize: fontSize.sp);
}

//size,Color
TextStyle fontSizeColorTextStyle(double fontSize, Color color) {
  return TextStyle(fontSize: fontSize.sp, color: color);
}

//Size,Weight
TextStyle fontSizeWeightTextStyle(
  double fontSize,
  FontWeight weight,
) {
  return TextStyle(
    fontSize: fontSize.sp,
    fontWeight: weight,
  );
}

//Size
TextStyle fontSizeTextStyle(double fontSize) {
  return TextStyle(fontSize: fontSize.sp);
}


TextStyle getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return GoogleFonts.lato(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
  );
}

// regular style
TextStyle getRegularStyle(
    {double fontSize = 14, Color color = ColorManager.blackColor}) {
  return getTextStyle(
    fontSize,
    FontWeightManager.regular,
    color,
  );
}

// light style
TextStyle getLightStyle(
    {double fontSize = 14, Color color = ColorManager.blackColor}) {
  return getTextStyle(
    fontSize,
    FontWeightManager.light,
    color,
  );
}

// bold style
TextStyle getBoldStyle(
    {double fontSize = 14, Color color = ColorManager.blackColor}) {
  return getTextStyle(
    fontSize,
    FontWeightManager.bold,
    color,
  );
}

// semi bold style
TextStyle getSemiBoldStyle(
    {double fontSize = 14, Color color = ColorManager.blackColor}) {
  return getTextStyle(
    fontSize,
    FontWeightManager.semiBold,
    color,
  );
}

// medium style
TextStyle getMediumStyle(
    {double fontSize = 14, Color color = ColorManager.blackColor}) {
  return getTextStyle(
    fontSize,
    FontWeightManager.medium,
    color,
  );
}
