import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lms/app_theme.dart';
import 'package:lms/contants.dart';
import 'package:lms/models/course.dart';
import 'package:provider/provider.dart';

class FeaturedCourse extends StatelessWidget {
  final Course course;
  FeaturedCourse(this.course);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    course.imageUrl,
                    width: 668,
                    height: 330,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 24,
                  bottom: 24,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(70),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        decoration: BoxDecoration(
                          color: context.watch<AppTheme>().isDark(context)
                              ? AppColors.darkBg.withOpacity(0.75)
                              : AppColors.lightBg.withOpacity(0.75),
                        ),
                        child: Stack(
                          children: [
                            SizedBox(
                              width: 70,
                              height: 70,
                              child: CircularProgressIndicator(
                                value: 0.64,
                                strokeWidth: 14,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Positioned.fill(
                              child: Center(
                                child: Text(
                                  '64%',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
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
