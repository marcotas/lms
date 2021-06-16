import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String? placeholder;
  InputText({this.placeholder});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: placeholder,
      ),
    );
  }
}
