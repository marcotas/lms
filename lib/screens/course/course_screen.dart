import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lms/models/course.dart';
import 'package:lms/screens/course/widgets/body.dart';
import 'package:lms/screens/course/widgets/header.dart';

class CourseScreen extends StatelessWidget {
  final Course course;
  CourseScreen({required this.course});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 64.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          width: 700,
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(course: course),
              Body(course: course),
            ],
          ),
        ),
      ),
    );
  }
}
