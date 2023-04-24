
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 14),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 250, 191, 114),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter tips',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(
                top: 16,
                bottom: 16,
              ),
              child: Text('Build your career with mine',
                  style: TextStyle(
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
          const Padding(
            padding: EdgeInsets.only(right: 24),
            child: Text(
              'May21,2023',
              style: TextStyle(
                color: Color.fromARGB(104, 0, 0, 0),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
