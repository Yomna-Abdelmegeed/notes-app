import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/custom_app_bar.dart';

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
        ],
      ),
    );
  }
}
