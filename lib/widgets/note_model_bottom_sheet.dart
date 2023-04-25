import 'package:flutter/material.dart';
import 'package:notes_app/constans.dart';
import 'package:notes_app/widgets/custom_bottom.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNotesForm(),
      ),
    );
  }
}

class AddNotesForm extends StatefulWidget {
  const AddNotesForm({
    super.key,
  });

  @override
  State<AddNotesForm> createState() => _AddNotesFormState();
}

class _AddNotesFormState extends State<AddNotesForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'title',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 36,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
            bottunTo: 'Add',
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
