import 'package:flutter/material.dart';
import 'package:lms/screens/home/widgets/body.dart';

class HomeScreen extends StatelessWidget {
  static final String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
