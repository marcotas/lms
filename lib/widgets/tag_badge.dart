import 'package:flutter/material.dart';
import 'package:lms/app_theme.dart';
import 'package:lms/contants.dart';
import 'package:provider/provider.dart';

class TagBadge extends StatelessWidget {
  final String text;
  final bool active;
  final Function? onClick;

  TagBadge({required this.text, this.active = false, this.onClick});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Stack(
        children: [
          Positioned.fill(
            child: Consumer<AppTheme>(
              builder: (_, appTheme, __) {
                Color backgroundColor = appTheme.isDark(context)
                    ? AppColors.white10
                    : AppColors.black10;

                return AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  decoration: BoxDecoration(
                    color: active
                        ? Theme.of(context).primaryColor
                        : backgroundColor,
                  ),
                );
              },
            ),
          ),
          TextButton(
            onPressed: () {
              onClick?.call();
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 24),
              primary: active
                  ? Colors.white
                  : Theme.of(context).textTheme.bodyText2?.color,
            ),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: active ? Colors.white : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
