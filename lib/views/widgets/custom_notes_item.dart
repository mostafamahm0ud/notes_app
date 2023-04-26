import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_notes_view.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const EditNotesView();
          }),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 14),
        decoration: BoxDecoration(
          color:  Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: const TextStyle(color: Colors.black, fontSize: 24),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  bottom: 16,
                ),
                child: Text(note.subtitle,
                    style: const TextStyle(
                      color: Color.fromARGB(104, 0, 0, 0),
                      fontSize: 16,
                    )),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Color.fromARGB(214, 0, 0, 0),
                  size: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                note.date,
                style: const TextStyle(
                  color: Color.fromARGB(104, 0, 0, 0),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
