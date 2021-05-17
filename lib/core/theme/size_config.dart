import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SizeConfig {
  static MediaQueryData mediaQueryData = Get.mediaQuery;
  static double screenWidth = Get.width;
  static double screenHeight = Get.height;
  static Orientation orientation = Get.mediaQuery.orientation;
  static double defaultSize = screenWidth * 0.024;

  static void init() {
    defaultSize = orientation == Orientation.landscape
        ? screenHeight * 0.024
        : screenWidth * 0.024;
  }
}
