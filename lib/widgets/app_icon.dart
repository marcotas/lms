import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppIcon extends StatelessWidget {
  late final String name;
  late final Color? color;

  final double size;
  AppIcon({required this.name, this.color, this.size = 20});

  @override
  Widget build(BuildContext context) {
    Color color = this.color ?? Theme.of(context).textTheme.bodyText2!.color!;
    return SvgPicture.asset(
      'icons/$name.svg',
      color: color,
      width: size,
    );
  }
}
