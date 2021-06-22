import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lms/contants.dart';
import 'package:lms/widgets/sidebar_item.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: double.infinity,
          width: 120,
          padding: EdgeInsets.symmetric(vertical: 48),
          decoration: BoxDecoration(
            color: AppColors.white5,
          ),
          child: Column(
            children: [
              SidebarItem(
                text: 'Cursos',
                icon: 'academic-cap',
                active: true,
              ),
              Spacer(),
              SidebarItem(
                text: 'Dark',
                icon: 'moon',
              ),
              SizedBox(height: 28),
              SidebarItem(
                text: 'Conta',
                icon: 'user-circle',
              ),
            ],
          ),
        ),
        Expanded(
          child: Center(
            child: Text('Home'),
          ),
        ),
      ],
    );
  }
}
