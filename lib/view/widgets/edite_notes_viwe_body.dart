import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/custom_app_bar.dart';
import 'package:notes_app/view/widgets/custom_text_field.dart';

class EditeNotesViweBody extends StatelessWidget {
  const EditeNotesViweBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        CustomAppBar(
          title: 'Edit Notes',
          icon: Icons.check,
        ),
        SizedBox(height: 30),
        CustomTextFormField(hintText: 'Title'),
        SizedBox(height: 24),
        CustomTextFormField(
          hintText: 'Content',
          maxLines: 5,
        ),
      ],
    );
  }
}
