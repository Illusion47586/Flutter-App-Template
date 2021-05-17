import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrandTextStyle {
  static const double kTextHeight = 1.3;

// Modal Styles
  static TextStyle display = GoogleFonts.manrope(
    fontSize: 160.h,
    fontWeight: FontWeight.w300,
    height: kTextHeight,
    letterSpacing: 0.5,
    color: Colors.black,
  );

// Page Titles
  static TextStyle header = GoogleFonts.manrope(
    fontSize: 120.h,
    fontWeight: FontWeight.w700,
    height: kTextHeight,
    // letterSpacing: 0.75,
  );

// Tabs, titles, forms
  static TextStyle title1 = GoogleFonts.manrope(
    fontSize: 60.h,
    fontWeight: FontWeight.w600,
    height: kTextHeight,
  );

// Buttons, tabs, titles, forms
  static TextStyle title2 = GoogleFonts.manrope(
    fontSize: 55.h,
    fontWeight: FontWeight.w600,
    height: kTextHeight,
    letterSpacing: 0.3,
  );

// Info Paragraphs
  static TextStyle headline = GoogleFonts.manrope(
    fontSize: 50.h,
    height: kTextHeight,
  );

// Station descriptions
  static TextStyle body = GoogleFonts.manrope(
    fontSize: 40.h,
    height: kTextHeight,
    letterSpacing: 2,
  );

// Time stamps, footers
  static TextStyle caption = GoogleFonts.manrope(
    fontSize: 20.h,
    height: kTextHeight,
  );
}
