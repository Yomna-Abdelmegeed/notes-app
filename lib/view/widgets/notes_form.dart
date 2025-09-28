import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubit/read_note_cubit/read_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/view/widgets/circular_color_list.dart';
import 'package:notes_app/view/widgets/custom_bottom.dart';
import 'package:notes_app/view/widgets/custom_text_field.dart';

class NotesForm extends StatefulWidget {
  const NotesForm({
    super.key,
  });

  @override
  State<NotesForm> createState() => _NotesFormState();
}

class _NotesFormState extends State<NotesForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddNoteCubit, AddNoteState>(
      builder: (context, state) {
        AutovalidateMode autoMode = AutovalidateMode.disabled;
        if (state is AddNoteValidation) {
          autoMode = state.autovalidateMode;
        }
        return Form(
          key: formKey,
          autovalidateMode: autoMode,
          child: Column(
            children: [
              CustomTextFormField(
                hintText: 'Title',
                onSaved: (value) {
                  title = value;
                },
              ),
              SizedBox(height: 24),
              CustomTextFormField(
                hintText: 'Content',
                maxLines: 5,
                onSaved: (value) {
                  subTitle = value;
                },
              ),
              SizedBox(height: 24),
              CircularColorList(),
              SizedBox(height: 24),
              CustomBottom(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    DateTime now = DateTime.now();
                    String formattedDate = DateFormat.yMMMMd().format(now);
                    NoteModel note = NoteModel(
                      title: title!,
                      subtitle: subTitle!,
                      date: formattedDate,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(note);
                    BlocProvider.of<ReadNoteCubit>(context).readNote();
                  } else {
                    BlocProvider.of<AddNoteCubit>(context).enableAutoValidate();
                  }
                },
              ),
              SizedBox(height: 24),
            ],
          ),
        );
      },
    );
  }
}
