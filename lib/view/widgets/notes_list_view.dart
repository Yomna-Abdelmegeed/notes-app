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
    const List<Color> colorList = [
      Color(0xffD5D1E9),
      Color(0xffD0E4EE),
      Color(0xffF3F5A9),
      Color(0xffF5CF9F),
      Color(0xffF5A7A6),
    ];

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: ListView.builder(
          itemCount: itemCount,
          padding: const EdgeInsets.symmetric(vertical: 0),
          itemBuilder: (context, index) {
            return CustomNotesCard(
              color: colorList[index % 5],
              onPressed: () {},
              note: notes[index],
            );
          }),
    );
  }
}
