import 'package:flutter/material.dart';
import 'package:lms/models/course.dart';

class RecommendedCourse extends StatelessWidget {
  final Course course;
  RecommendedCourse(this.course);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                course.imageUrl,
                width: 330,
                height: 206,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Text(
              course.name,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
        SizedBox(width: 64),
      ],
    );
  }
}
