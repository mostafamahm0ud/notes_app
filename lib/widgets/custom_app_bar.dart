import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.titleBar, required this.icon});
  final String titleBar;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titleBar,
          style: TextStyle(
            fontSize: 26,
          ),
        ),
        CustomSearchIcon(icon: icon,),
      ],
    );
  }
}
