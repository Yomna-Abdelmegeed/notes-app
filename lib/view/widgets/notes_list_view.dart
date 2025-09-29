import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/view/widgets/custom_notes_card.dart';

class NotesListView extends StatelessWidget {
  const NotesListView(
      {super.key, required this.itemCount, required this.notes});
  final int itemCount;
  final List<NoteModel> notes;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: ListView.builder(
          itemCount: notes.length,
          padding: const EdgeInsets.symmetric(vertical: 0),
          itemBuilder: (context, index) {
            return CustomNotesCard(
              color: Color(notes[index].color),
              note: notes[index],
            );
          }),
    );
  }
}
