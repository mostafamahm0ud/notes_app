import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(
            height: 30,
          ),
          CustomAppBar(
            icon: Icons.check,
            titleBar: 'Edite Note',
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextField(hint: 'title'),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'content',
            maxLines: 6,
          ),
        ],
      ),
    );
  }
}
