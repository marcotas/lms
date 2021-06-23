import 'package:flutter/material.dart';
import 'package:lms/contants.dart';
import 'package:lms/screens/home/widgets/tag_filters.dart';
import 'package:lms/widgets/input_text.dart';
import 'package:lms/widgets/sidebar.dart';
import 'package:lms/widgets/tag_badge.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Sidebar(),
        Expanded(
          child: Container(
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 86),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InputText(placeholder: 'Pesquisar...', iconLeft: 'search'),
                  SizedBox(height: 16),
                  TagFilters(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
