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
          text: appTheme.themeModeLabel(context),
          icon: isDark ? 'moon' : 'sun',
          iconColor: AppColors.primary,
          onPressed: () {
            appTheme.toggleDarkMode(context);
          },
        );
      },
    );
  }
}
