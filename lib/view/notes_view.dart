import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/custom_app_bar.dart';
import 'package:notes_app/view/widgets/custom_notes_card.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 24),
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
          SizedBox(height: 24),
          CustomNotesCard(
            title: 'Flutter tips',
            subtitle: 'build your carrer with tharwat samy',
            date: 'May 21,2022',
            color: Colors.amberAccent,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}


