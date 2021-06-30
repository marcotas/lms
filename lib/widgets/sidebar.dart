import 'package:flutter/material.dart';
import 'package:lms/app_theme.dart';
import 'package:lms/contants.dart';
import 'package:lms/widgets/sidebar_item.dart';
import 'package:lms/widgets/theme_switch.dart';
import 'package:provider/provider.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppTheme>(
      builder: (_, appTheme, __) => Container(
        height: double.infinity,
        width: 120,
        padding: EdgeInsets.symmetric(vertical: 48),
        decoration: BoxDecoration(
          color: appTheme.isDark ? AppColors.white5 : AppColors.black5,
        ),
        child: Column(
          children: [
            SidebarItem(
              text: 'Cursos',
              icon: 'academic-cap',
              active: true,
            ),
            Spacer(),
            ThemeSwitch(),
            SidebarItem(
              text: 'Conta',
              icon: 'user-circle',
            ),
          ],
        ),
      ),
    );
  }
}
