import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/read_note_cubit/read_note_cubit.dart';
import 'package:notes_app/view/widgets/custom_app_bar.dart';
import 'package:notes_app/view/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNoteCubit, ReadNoteState>(
      builder: (context, state) {
        return state is ReadNoteSuccess
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    CustomAppBar(
                      title: 'Notes',
                      icon: Icons.search,
                    ),
                    SizedBox(height: 24),
                    Expanded(
                      child: NotesListView(
                        itemCount: state.notes.length,
                        notes: state.notes,
                      ),
                    ),
                  ],
                ),
              )
            : const Center(child: CircularProgressIndicator());
      },
    );
  }
}
