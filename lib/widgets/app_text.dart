import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  const AppText(
    this.text, {
    this.fontSize = 18,
    this.fontWeight = FontWeight.normal,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyText2!.copyWith(
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
    );
  }
}
