import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/read_note_cubit/read_note_cubit.dart';
import 'package:notes_app/view/widgets/custom_bottom_sheet.dart';
import 'package:notes_app/view/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReadNoteCubit()..readNote(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              //! allows bottom sheet to resize with keyboard
              isScrollControlled: true,
              builder: (context) {
                return Padding(
                  //! pushes up when keyboard shows
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: CustomBottomSheet(),
                );
              },
            );
          },
          backgroundColor: Color(0xFF89CFF0),
          shape: CircleBorder(),
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
        body: NotesViewBody(),
      ),
    );
  }
}
