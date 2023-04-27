import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar_icon.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.titleBar, required this.icon, this.onPressed});
  final String titleBar;
  final IconData icon;
  final void Function()? onPressed;
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
        CustomAppBarIcon(
          onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}
