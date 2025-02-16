import 'package:dashapp/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
        fontSize: ResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.w600,
        color: Color(0xff064060),
        fontFamily: GoogleFonts.montserrat().fontFamily);
  }

  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
        fontSize: ResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w400,
        color: Color(0xff064060),
        fontFamily: GoogleFonts.montserrat().fontFamily);
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
        fontSize: ResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w500,
        color: Color(0xff064060),
        fontFamily: GoogleFonts.montserrat().fontFamily);
  }

  static TextStyle styleSemibold16(BuildContext context) {
    return TextStyle(
        fontSize: ResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w600,
        color: Color(0xff064060),
        fontFamily: GoogleFonts.montserrat().fontFamily);
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
        fontSize: ResponsiveFontSize(context, fontSize: 12),
        fontWeight: FontWeight.w400,
        color: Color(0xffaaaaaa),
        fontFamily: GoogleFonts.montserrat().fontFamily);
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
        fontSize: ResponsiveFontSize(context, fontSize: 24),
        fontWeight: FontWeight.w600,
        color: Color(0xff4eb7f2),
        fontFamily: GoogleFonts.montserrat().fontFamily);
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
        fontSize: ResponsiveFontSize(context, fontSize: 14),
        fontWeight: FontWeight.w400,
        color: Color(0xffaaaaaa),
        fontFamily: GoogleFonts.montserrat().fontFamily);
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
        fontSize: ResponsiveFontSize(context, fontSize: 18),
        fontWeight: FontWeight.w600,
        color: Color(0xff4eb7f2),
        fontFamily: GoogleFonts.montserrat().fontFamily);
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
        fontSize: ResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w700,
        color: Color(0xff4eb7f2),
        fontFamily: GoogleFonts.montserrat().fontFamily);
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
        fontSize: ResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontFamily: GoogleFonts.montserrat().fontFamily);
  }
}

double ResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.18;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispacher = PlatformDispatcher.instance;
  // var dispacherPhysicalWidth = dispacher.views.first.physicalSize.width;
  // var devicePixelRatio = dispacher.views.first.devicePixelRatio;
  // double width = dispacherPhysicalWidth / devicePixelRatio;
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tabletBreakPoint) {
    return width / 600;
  } else if (width < SizeConfig.desktopBreakPoint) {
    return width / 1000;
  } else {
    return width / 2000;
  }
}
// here we use dispacherplatform to be able to git width without need for context and made app work easy
// but there are an problem and it 
// without context here app when i change size fonts canot be changed dynamically i need to do ctrl+S and hot reload to see efect after change size of device
// so we in need for mediaquery with it's context