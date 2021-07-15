import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/contants.dart';

class AppTheme with ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool isDark(context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  void toggleDarkMode(BuildContext context) {
    var currentIndex = ThemeMode.values.indexOf(themeMode);
    currentIndex++;
    if (currentIndex > 2) currentIndex = 0;
    themeMode = ThemeMode.values[currentIndex];

    notifyListeners();
  }

  static Color textColor(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1!.color!;
  }

  static final ligthTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Colors.white,
    brightness: Brightness.light,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: AppColors.primary,
        textStyle: TextStyle(fontSize: 16),
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 14,
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
      bodyText1: GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.textDark,
      ),
      bodyText2: GoogleFonts.inter(
        fontSize: 18,
        color: AppColors.textDark,
      ),
      headline3: GoogleFonts.inter(
        fontSize: 48,
        fontWeight: FontWeight.w600,
        color: AppColors.textDark,
      ),
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
    backgroundColor: AppColors.darkBg,
    brightness: Brightness.dark,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: AppColors.primary,
        textStyle: TextStyle(fontSize: 16),
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 14,
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
      bodyText1: GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      bodyText2: GoogleFonts.inter(
        fontSize: 18,
      ),
      headline3: GoogleFonts.inter(
        fontSize: 48,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
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
