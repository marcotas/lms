import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/app_theme.dart';
import 'package:lms/contants.dart';
import 'package:lms/routes.dart';
import 'package:lms/screens/login/login_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => AppTheme()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool darkMode = context.watch<AppTheme>().darkMode;

    return MaterialApp(
      initialRoute: '/register',
      routes: routes,
      theme: ThemeData(
        primaryColor: AppColors.primary,
        primaryColorDark: Colors.red,
        scaffoldBackgroundColor: context.watch<AppTheme>().darkMode
            ? AppColors.darkBg
            : Colors.white,
        accentColor: Colors.yellow,
        brightness: darkMode ? Brightness.dark : Brightness.light,
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
            color: darkMode ? Colors.white : AppColors.textDark,
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
          fillColor: darkMode ? AppColors.white5 : AppColors.black10,
          hintStyle: TextStyle(
            color: darkMode
                ? Colors.white.withOpacity(0.5)
                : AppColors.textDark.withOpacity(0.5),
          ),
        ),
      ),
      home: LoginScreen(),
    );
  }
}
