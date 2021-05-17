import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sky_lenses/core/theme/colors.dart';

class ThemeHandler {
  static String fontFamily = 'manrope';

  static ThemeData defaultTheme = ThemeData(
    primarySwatch: Colors.blue,
    // errorColor: BrandColors.danger,
    // accentColor: BrandColors.accentColor,
    backgroundColor: Colors.white,
    // scaffoldBackgroundColor: BrandColors.backgroundColor,
    iconTheme: const IconThemeData(
      color: Colors.black,
      size: 40,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        foregroundColor: MaterialStateProperty.all(Colors.black),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        alignment: Alignment.center,
        enableFeedback: true,
        overlayColor: MaterialStateProperty.all(Colors.grey.shade200),
        elevation: MaterialStateProperty.all(20),
        shadowColor: MaterialStateProperty.all(Colors.black12),
      ),
    ),
    fontFamily: GoogleFonts.manrope().fontFamily,
    textTheme: GoogleFonts.manropeTextTheme(),
    brightness: Brightness.light,
  );
}
