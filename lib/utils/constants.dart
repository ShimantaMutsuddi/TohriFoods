import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppConstants {
  static const String appName = 'ট হ রী  ফু ড স';
  static const String subTitle = 'অ ন লা ই নে  কে নাকা টা  ক রু ন';
  static const Color primaryColor = Color(0xFF65B741); //#65B741
  static const Color appBackgroundColor = Color(0xFFEEEEFB);
  static const double padding = 16.0;
}

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppConstants.appBackgroundColor,
    fontFamily: GoogleFonts.poppins().fontFamily,

  );


}