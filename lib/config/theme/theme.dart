
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';

class AppTheme {
  static final AppTheme _instance = AppTheme._internal();

  factory AppTheme() => _instance;

  AppTheme._internal();

  // Dark theme instance
  static final ThemeData _darkTheme = _createDarkTheme();

  // Light theme instance
  static final ThemeData _lightTheme = _createLightTheme();

  static ThemeData get dark => _darkTheme;
  static ThemeData get light => _lightTheme;

  // Create Dark Theme
  static ThemeData _createDarkTheme() {
    return ThemeData.dark().copyWith(
      brightness: Brightness.dark,
      primaryColor: AppColors.primaryColorDark,
      colorScheme: const ColorScheme.dark().copyWith(
        primary: AppColors.primaryColorDark,
        brightness: Brightness.dark,
        surfaceContainer: AppColors.surfContainerDark,
        surfaceContainerHigh: AppColors.surfContainerHighDark,
      ),
      elevatedButtonTheme: _elevatedButtonTheme(AppColors.primaryColorDark),
      inputDecorationTheme: _inputDecorationDarkTheme,
      scaffoldBackgroundColor: AppColors.backgroundColorDark,
      textTheme: _darkTextTheme,
      appBarTheme: _appBarTheme(AppColors.primaryColorDark),
      dialogTheme: DialogTheme(
        insetPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        backgroundColor: AppColors.whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
      ),
    );
  }

  // Create Light Theme
  static ThemeData _createLightTheme() {
    return ThemeData.light().copyWith(
      brightness: Brightness.light,
      primaryColor: AppColors.primaryColorLight,
      colorScheme: const ColorScheme.light().copyWith(
        primary: AppColors.primaryColorLight,
        brightness: Brightness.light,
        surfaceContainer: AppColors.surfContainerLight,
        surfaceContainerHigh: AppColors.surfContainerHighLight,
      ),
      elevatedButtonTheme: _elevatedButtonTheme(AppColors.primaryColorLight),
      inputDecorationTheme: _inputDecorationLightTheme,
      scaffoldBackgroundColor: AppColors.backgroundColorLight,
      textTheme: _lightTextTheme,
      appBarTheme: _appBarTheme(AppColors.primaryColorLight),
      dialogTheme: DialogTheme(
        insetPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        backgroundColor: AppColors.whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
      ),
    );
  }

  // AppBar theme
  static AppBarTheme _appBarTheme(Color backgroundColor) {
    return AppBarTheme(
      backgroundColor: backgroundColor,
      centerTitle: true,
      elevation: 0,
      iconTheme: const IconThemeData(color: AppColors.whiteColor),
    );
  }

  // Elevated Button Theme
  static ElevatedButtonThemeData _elevatedButtonTheme(Color backgroundColor) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50.h),
        foregroundColor: Colors.white,
        backgroundColor: backgroundColor,
        textStyle: const TextStyle(fontSize: 16, color: Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    );
  }

  // Input Decoration Theme for Dark
  static final InputDecorationTheme _inputDecorationDarkTheme =
      InputDecorationTheme(
    fillColor: AppColors.surfContainerHighDark,
    filled: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(56.r),
      borderSide: const BorderSide(color: AppColors.surfContainerDark),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(56.r),
      borderSide: const BorderSide(color: AppColors.surfContainerDark),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(56.r),
      borderSide: const BorderSide(color: AppColors.primaryColorDark),
    ),
  );

  // Input Decoration Theme for Light
  static final InputDecorationTheme _inputDecorationLightTheme =
      InputDecorationTheme(
          fillColor: AppColors.backgroundColorLight,
          filled: true,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(56.r),
            borderSide: const BorderSide(color: Color(0xFFE7E7E7)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(56.r),
            borderSide: const BorderSide(color: Color(0xFFE7E7E7)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(56.r),
            borderSide: const BorderSide(color: AppColors.primaryColorLight),
          ));

  static final TextTheme _darkTextTheme = TextTheme(
    displayLarge: GoogleFonts.inter(
      fontSize: 96.0, // Direct double value instead of 96.sp
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    displayMedium: GoogleFonts.inter(
      fontSize: 60.0, // Direct double value instead of 60.sp
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    displaySmall: GoogleFonts.inter(
      fontSize: 48.0, // Direct double value instead of 48.sp
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headlineLarge: GoogleFonts.inter(
      fontSize: 34.0, // Direct double value instead of 34.sp
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headlineMedium: GoogleFonts.inter(
      fontSize: 24.0, // Direct double value instead of 24.sp
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headlineSmall: GoogleFonts.inter(
      fontSize: 20.0, // Direct double value instead of 20.sp
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    titleLarge: GoogleFonts.inter(
      fontSize: 22.0, // Direct double value instead of 22.sp
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    titleMedium: GoogleFonts.inter(
      fontSize: 18.0, // Direct double value instead of 18.sp
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    titleSmall: GoogleFonts.inter(
      fontSize: 14.0, // Direct double value instead of 14.sp
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    bodyLarge: GoogleFonts.inter(
      fontSize: 16.0, // Direct double value instead of 16.sp
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    bodyMedium: GoogleFonts.inter(
      fontSize: 14.0, // Direct double value instead of 14.sp
      color: Colors.white,
      height: 1.5,
      letterSpacing: 0.5,
    ),
    bodySmall: GoogleFonts.inter(
      fontSize: 12.0, // Direct double value instead of 12.sp
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    labelLarge: GoogleFonts.inter(
      fontSize: 14.0, // Direct double value instead of 14.sp
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    labelMedium: GoogleFonts.inter(
      fontSize: 12.0, // Direct double value instead of 12.sp
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    labelSmall: GoogleFonts.inter(
      fontSize: 10.0, // Direct double value instead of 10.sp
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
  );

  static final TextTheme _lightTextTheme = TextTheme(
    displayLarge: GoogleFonts.inter(
      fontSize: 96.0, // Direct double value instead of 96.sp
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    displayMedium: GoogleFonts.inter(
      fontSize: 60.0, // Direct double value instead of 60.sp
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    displaySmall: GoogleFonts.inter(
      fontSize: 48.0, // Direct double value instead of 48.sp
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headlineLarge: GoogleFonts.inter(
      fontSize: 34.0, // Direct double value instead of 34.sp
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headlineMedium: GoogleFonts.inter(
      fontSize: 24.0, // Direct double value instead of 24.sp
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headlineSmall: GoogleFonts.inter(
      fontSize: 20.0, // Direct double value instead of 20.sp
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    titleLarge: GoogleFonts.inter(
      fontSize: 22.0, // Direct double value instead of 22.sp
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    titleMedium: GoogleFonts.inter(
      fontSize: 18.0, // Direct double value instead of 18.sp
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    titleSmall: GoogleFonts.inter(
      fontSize: 14.0, // Direct double value instead of 14.sp
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    bodyLarge: GoogleFonts.inter(
      fontSize: 16.0, // Direct double value instead of 16.sp
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    bodyMedium: GoogleFonts.inter(
      fontSize: 14.0, // Direct double value instead of 14.sp
      color: Colors.black,
      height: 1.5,
      letterSpacing: 0.5,
    ),
    bodySmall: GoogleFonts.inter(
      fontSize: 12.0, // Direct double value instead of 12.sp
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    labelLarge: GoogleFonts.inter(
      fontSize: 14.0, // Direct double value instead of 14.sp
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    labelMedium: GoogleFonts.inter(
      fontSize: 12.0, // Direct double value instead of 12.sp
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    labelSmall: GoogleFonts.inter(
      fontSize: 10.0, // Direct double value instead of 10.sp
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
  );
}
