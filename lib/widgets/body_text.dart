import 'package:flutter/material.dart';

class BodyText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final Color? color;
  BodyText(this.text, {this.textAlign, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.bodyText1!.copyWith(color: color),
    );
  }
}
