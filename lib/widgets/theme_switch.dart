import 'package:flutter/material.dart';
import 'package:lms/app_theme.dart';
import 'package:lms/widgets/body_text.dart';
import 'package:provider/provider.dart';

class ThemeSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppTheme>(
      builder: (_, appTheme, __) {
        return Row(
          children: [
            Switch.adaptive(
              value: context.watch<AppTheme>().isDark,
              onChanged: (value) {
                appTheme.toggleDarkMode();
              },
              activeColor: Theme.of(context).primaryColor,
            ),
            BodyText(
              appTheme.isDark ? 'Dark Mode' : 'Light Mode',
            ),
          ],
        );
      },
    );
  }
}
