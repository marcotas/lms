import 'package:flutter/material.dart';
import 'package:lms/app_theme.dart';
import 'package:lms/contants.dart';
import 'package:lms/widgets/sidebar_item.dart';
import 'package:provider/provider.dart';

class ThemeSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppTheme>(
      builder: (_, appTheme, __) {
        var isDark = appTheme.isDark(context);
        return SidebarItem(
          text: _themeModeLabel(appTheme.themeMode),
          icon: _icon(appTheme.themeMode),
          iconColor: AppColors.primary,
          onPressed: () {
            appTheme.toggleDarkMode(context);
          },
        );
      },
    );
  }

  String _themeModeLabel(ThemeMode themeMode) {
    switch (themeMode) {
      case ThemeMode.dark:
        return 'Dark';
      case ThemeMode.light:
        return 'Light';
      default:
        return 'Auto';
    }
  }

  String _icon(ThemeMode themeMode) {
    switch (themeMode) {
      case ThemeMode.dark:
        return 'moon';
      case ThemeMode.light:
        return 'sun';
      default:
        return 'auto';
    }
  }
}
