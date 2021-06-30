import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lms/app_theme.dart';
import 'package:provider/provider.dart';

class SidebarItem extends StatelessWidget {
  SidebarItem({
    required this.icon,
    required this.text,
    this.active = false,
    this.onPressed,
    this.iconColor,
  });

  final String icon;
  final String text;
  final bool active;
  final void Function()? onPressed;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    Color _iconColor = iconColor ?? _textColor(context);

    return Stack(
      children: [
        Container(
          width: double.infinity,
          child: TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 20),
            ),
            child: Consumer<AppTheme>(
              builder: (_, appTheme, __) => Column(
                children: [
                  SvgPicture.asset(
                    'icons/$icon.svg',
                    color: _iconColor
                        .withOpacity(iconColor != null || active ? 1 : 0.5),
                    width: 44,
                  ),
                  SizedBox(height: 6),
                  Text(
                    text,
                    style: TextStyle(
                      color: _textColor(context).withOpacity(active ? 1 : 0.5),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Color _textColor(BuildContext context) {
    return active
        ? Theme.of(context).primaryColor
        : AppTheme.textColor(context);
  }
}
