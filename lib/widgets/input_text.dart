import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InputText extends StatelessWidget {
  final String? placeholder;
  final String? iconLeft;
  InputText({this.placeholder, this.iconLeft});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: placeholder,
        prefixIcon: iconLeft != null
            ? Padding(
                padding: EdgeInsets.all(10),
                child: SvgPicture.asset(
                  'icons/$iconLeft.svg',
                  color: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.color
                      ?.withOpacity(0.5),
                ),
              )
            : null,
      ),
    );
  }
}
