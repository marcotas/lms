import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  final String title;
  final TextAlign? textAlign;
  final Color? color;
  AppTitle(this.title, {this.textAlign, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.headline3!.copyWith(
            color: color,
          ),
    );
  }
}
