import 'package:flutter/material.dart';

class SizeConfig {
  static const double desktopBreakPoint = 1300;
  static const double tabletBreakPoint = 800;

  static late double width, height;

  static init(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
  }

  // for cause in income_section we donot prefer use this because it doesnot real time in web
}
