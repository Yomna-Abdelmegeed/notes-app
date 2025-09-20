import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/edite_notes_viwe_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: EditeNotesViweBody(),
      ),
    );
  }
}
