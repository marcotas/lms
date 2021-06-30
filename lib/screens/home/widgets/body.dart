import 'package:flutter/material.dart';
import 'package:lms/contants.dart';
import 'package:lms/models/course.dart';
import 'package:lms/screens/home/widgets/featured_course.dart';
import 'package:lms/screens/home/widgets/recommended_course.dart';
import 'package:lms/screens/home/widgets/tag_filters.dart';
import 'package:lms/widgets/app_title.dart';
import 'package:lms/widgets/input_text.dart';
import 'package:lms/widgets/sidebar.dart';
import 'package:lms/widgets/tag_badge.dart';

class Body extends StatelessWidget {
  List<Course> courses = [
    Course(
      id: 1,
      name: 'Introdução ao Laravel',
      imageUrl:
          'https://images.unsplash.com/photo-1607970669494-309137683be5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80',
    ),
    Course(
      id: 2,
      name: 'Laravel Avançado',
      imageUrl:
          'https://images.unsplash.com/photo-1607706189992-eae578626c86?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80',
    ),
    Course(
      id: 3,
      name: 'Flutter Para Iniciantes',
      imageUrl:
          'https://images.unsplash.com/photo-1618388810903-840bb0d15ea5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Sidebar(),
        Expanded(
          child: Container(
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 64, horizontal: 86),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InputText(
                            placeholder: 'Pesquisar...', iconLeft: 'search'),
                        SizedBox(height: 16),
                        TagFilters(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 86),
                    child: AppTitle('Destaque', color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 86),
                        ...courses.map((course) => FeaturedCourse(course)),
                        SizedBox(width: 22),
                      ],
                    ),
                  ),
                  SizedBox(height: 64),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 86),
                    child: AppTitle('Recomendados', color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 86),
                        ...courses.reversed
                            .map((course) => RecommendedCourse(course)),
                        SizedBox(width: 22),
                      ],
                    ),
                  ),
                  SizedBox(height: 64),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
