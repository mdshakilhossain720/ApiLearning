import 'dart:ui';

class AppColors {
  // Singleton instance
  static final AppColors _instance = AppColors._internal();
  factory AppColors() => _instance;

  AppColors._internal();

  // Dark theme colors
  static const Color primaryColorDark = Color(0xFFF9C238);
  static const Color surfContainerDark = Color(0xFF283142);
  static const Color surfContainerHighDark = Color(0xFF3A4A64);
  static const Color backgroundColorDark = Color(0xFF202736);
  static const Color whiteColor =
      Color(0xFFFFFFFF); // Can be used for text/icons in dark mode
  static const Color hintAndLabelColorDark = Color(0xFFBEBEBE);

  // Light theme colors
  static const Color primaryColor = Color(0xFF015B99);
  static const Color primaryColorLight = Color(0xFFF9C238);
  static const Color surfContainerHighLight = Color(0xFFeefbf5);
  static const Color surfContainerLight = Color(0xFFFFFFFF);
  static const Color backgroundColorLight = Color(0xffffffff);
  static const Color blackColor = Color(0xFF000000);
  static const Color hintAndLabelColorLight = Color(0xFF757575);
}
