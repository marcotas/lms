import 'package:flutter/widgets.dart';
import 'package:lms/app_theme.dart';
import 'package:lms/contants.dart';
import 'package:provider/provider.dart';

class AppCard extends StatelessWidget {
  AppCard({@required this.child, this.radius = 24, this.padding = 36});
  late final dynamic child;
  late final double radius;
  late final double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: context.watch<AppTheme>().isDark(context)
              ? AppColors.white5
              : AppColors.black10,
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),
        child: child);
  }
}
