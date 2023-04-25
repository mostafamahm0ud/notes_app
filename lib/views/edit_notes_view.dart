import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:notes_app/widgets/edit_view_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNotesViewBody(),
    );
  }
}
