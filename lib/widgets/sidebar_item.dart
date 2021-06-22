import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SidebarItem extends StatelessWidget {
  SidebarItem({required this.icon, required this.text, this.active = false});

  final String icon;
  final String text;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: active ? 1 : 0.5,
      child: Column(
        children: [
          SvgPicture.asset(
            'icons/$icon.svg',
            color: active ? Theme.of(context).primaryColor : Colors.white,
            width: 44,
          ),
          Text(
            text,
            style: TextStyle(
              color: active ? Theme.of(context).primaryColor : null,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
