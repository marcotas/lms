import 'package:flutter/foundation.dart';

class AppTheme with ChangeNotifier {
  bool darkMode = false;

  void toggleDarkMode() {
    darkMode = !darkMode;
    notifyListeners();
  }
}
