import 'package:flutter/material.dart';
import 'package:lms/models/course.dart';
import 'package:lms/widgets/app_icon.dart';
import 'package:lms/widgets/app_text.dart';
import 'package:lms/widgets/app_title.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.course,
  }) : super(key: key);

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTitle(course.name),
          SizedBox(height: 24),
          Opacity(
            opacity: 0.75,
            child: AppText(
              'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad soluta molestias aut assumenda explicabo incidunt architecto voluptates pariatur minima in. Optio, doloremque quaerat ratione dignissimos explicabo itaque ullam alias ducimus!',
            ),
          ),
          SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {},
            child: Wrap(
              spacing: 8,
              children: [
                Text('Começar Agora'),
                AppIcon(name: 'chevron-right', size: 20),
              ],
            ),
          ),
          SizedBox(height: 32),
          AppTitle('Módulos', fontSize: 24),
          SizedBox(height: 24),
          Column(
            children: List.generate(
              7,
              (index) => Column(
                children: [
                  if (index != 0) SizedBox(height: 16),
                  Row(
                    children: [
                      AppIcon(name: 'chevron-right', size: 24),
                      SizedBox(width: 16),
                      AppText('Módulo ${index + 1}'),
                      Spacer(),
                      AppText('1h 23m'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
