import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/custom_bottom.dart';
import 'package:notes_app/view/widgets/custom_text_field.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(hintText: 'Title'),
            SizedBox(height: 24),
            CustomTextField(
              hintText: 'Content',
              maxLines: 5,
            ),
            SizedBox(height: 70),
            CustomBottom(),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
