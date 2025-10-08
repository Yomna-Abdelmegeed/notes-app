import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/read_note_cubit/read_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/view/widgets/circular_edit_color_list.dart';
import 'package:notes_app/view/widgets/custom_app_bar.dart';
import 'package:notes_app/view/widgets/custom_text_field.dart';

class EditeNotesViweBody extends StatefulWidget {
  const EditeNotesViweBody(
      {super.key, required this.note, required this.onColorChanged});

  final NoteModel note;
  final ValueChanged<Color> onColorChanged;

  @override
  State<EditeNotesViweBody> createState() => _EditeNotesViweBodyState();
}

class _EditeNotesViweBodyState extends State<EditeNotesViweBody> {
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        CustomAppBar(
          onPressed: () {
            widget.note.title = title ?? widget.note.title;
            widget.note.subtitle = subtitle ?? widget.note.subtitle;
            widget.note.save();
            BlocProvider.of<ReadNoteCubit>(context).readNote();
            Navigator.pop(context);
          },
          title: 'Edit Notes',
          icon: Icons.check,
        ),
        SizedBox(height: 30),
        CustomTextFormField(
          hintText: widget.note.title,
          onChanged: (value) {
            title = value;
          },
        ),
        SizedBox(height: 24),
        CustomTextFormField(
          hintText: widget.note.subtitle,
          maxLines: 5,
          onChanged: (value) {
            subtitle = value;
          },
        ),
        SizedBox(height: 20),
        CircularEditColorList(
            note: widget.note,
            onColorChanged: (newColor) {
              widget.onColorChanged(newColor);
            })
      ],
    );
  }
}
