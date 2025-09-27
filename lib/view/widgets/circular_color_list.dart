import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/circular_color.dart';

class CircularColorList extends StatelessWidget {
  const CircularColorList({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 53,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircularColor(
              isActive: isActive,
              index: index,
            ),
          );
        },
      ),
    );
  }
}
