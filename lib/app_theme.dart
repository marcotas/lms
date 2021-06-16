import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/contants.dart';

class AppTheme with ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;

  bool get isDark => themeMode == ThemeMode.dark;

  void toggleDarkMode() {
    themeMode = isDark ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }

  static final ligthTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: AppColors.primary,
        textStyle: TextStyle(fontSize: 16),
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: AppColors.primary),
    ),
    switchTheme: SwitchThemeData(),
    textTheme: TextTheme(
      headline4: GoogleFonts.inter(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: AppColors.textDark,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 12,
      ),
      filled: true,
      fillColor: AppColors.black10,
      hintStyle: TextStyle(
        color: AppColors.textDark.withOpacity(0.5),
      ),
    ),
  );

  static final darkTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.darkBg,
    brightness: Brightness.dark,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: AppColors.primary,
        textStyle: TextStyle(fontSize: 16),
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: AppColors.primary),
    ),
    switchTheme: SwitchThemeData(),
    textTheme: TextTheme(
      headline4: GoogleFonts.inter(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 12,
      ),
      filled: true,
      fillColor: AppColors.white5,
      hintStyle: TextStyle(
        color: Colors.white.withOpacity(0.5),
      ),
    ),
  );
}
