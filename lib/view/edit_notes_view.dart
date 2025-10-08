import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/view/widgets/edite_notes_viwe_body.dart';

class EditNotesView extends StatefulWidget {
  const EditNotesView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNotesView> createState() => _EditNotesViewState();
}

class _EditNotesViewState extends State<EditNotesView> {
  late Color currentColor;
  @override
  void initState() {
    super.initState();
    currentColor = Color(widget.note.color);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: currentColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: EditeNotesViweBody(
          note: widget.note,
          onColorChanged: (Color newColor) {
            setState(() {
              currentColor = newColor;
            });
          },
        ),
      ),
    );
  }
}
