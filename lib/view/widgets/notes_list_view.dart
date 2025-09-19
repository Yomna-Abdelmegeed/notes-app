import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/custom_notes_card.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 0),
          itemBuilder: (context, index) {
            return CustomNotesCard(
              title: 'Flutter tips',
              subtitle: 'build your carrer with tharwat samy',
              date: 'May 21,2022',
              color: Colors.amberAccent,
              onPressed: () {},
            );
          }),
    );
  }
}
