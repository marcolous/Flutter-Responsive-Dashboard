import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular12 = TextStyle(
    color: const Color(0xffAAAAAA),
    fontSize: getResponsiveFontSize(fontSize: 12),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleRegular14 = TextStyle(
    color: const Color(0xffAAAAAA),
    fontSize: getResponsiveFontSize(fontSize: 14),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleRegular16 = TextStyle(
    color: const Color(0xff064060),
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleMedium16 = TextStyle(
    color: const Color(0xff064061),
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
  static TextStyle styleSemiBold16 = TextStyle(
    color: const Color(0xff064060),
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleBold16 = TextStyle(
    color: const Color(0xff4EB7F2),
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
  );
  static TextStyle styleSemiBold18 = TextStyle(
    color: const Color(0xffFFFFFF),
    fontSize: getResponsiveFontSize(fontSize: 18),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleMedium20 = TextStyle(
    color: const Color(0xffFFFFFF),
    fontSize: getResponsiveFontSize(fontSize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleSemiBold20 = TextStyle(
    color: const Color(0xff064061),
    fontSize: getResponsiveFontSize(fontSize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleSemiBold24 = TextStyle(
    color: const Color(0xff4EB7F2),
    fontSize: getResponsiveFontSize(fontSize: 24),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
}

double getResponsiveFontSize({required double fontSize}) {
  double scaleFactor = getScaleFactor();
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor() {
  //double width = MediaQuery.sizeOf(context).width;

  var dispatcher = PlatformDispatcher.instance;
  var physicalWidth = dispatcher.views.first.physicalSize.width;
  var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  double width = physicalWidth / devicePixelRatio;

  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1500;
  }
}
