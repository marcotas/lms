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
    return MaterialApp(
      initialRoute: '/register',
      debugShowCheckedModeBanner: false,
      routes: routes,
      themeMode: context.watch<AppTheme>().themeMode,
      theme: AppTheme.ligthTheme,
      darkTheme: AppTheme.darkTheme,
      home: LoginScreen(),
    );
  }
}
