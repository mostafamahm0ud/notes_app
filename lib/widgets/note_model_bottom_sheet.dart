import 'package:flutter/material.dart';
import 'package:notes_app/constans.dart';
import 'package:notes_app/widgets/custom_bottom.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hint: 'title',
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              hint: 'content',
              maxLines: 5,
            ),
             SizedBox(
            height: 36,
          ),
            CustomButton(bottunTo: 'Add',),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
