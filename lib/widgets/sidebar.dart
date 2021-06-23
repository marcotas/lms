import 'package:flutter/material.dart';
import 'package:lms/contants.dart';
import 'package:lms/widgets/sidebar_item.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
