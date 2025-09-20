import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/custom_app_bar.dart';
import 'package:notes_app/view/widgets/custom_bottom_sheet.dart';
import 'package:notes_app/view/widgets/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return CustomBottomSheet();
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomAppBar(
              title: 'Notes',
              icon: Icons.search,
            ),
            SizedBox(height: 24),
            Expanded(child: NotesListView()),
          ],
        ),
      ),
    );
  }
}
