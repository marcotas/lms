import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lms/contants.dart';
import 'package:lms/models/course.dart';
import 'package:lms/widgets/app_icon.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.course,
  }) : super(key: key);

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: 'course-image-${course.id}',
          child: Image.network(
            course.imageUrl,
            width: double.infinity,
            height: 400,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 24,
          right: 24,
          child: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 17,
              child: AppIcon(name: 'x', color: AppColors.darkBg),
            ),
          ),
        ),
      ],
    );
  }
}
