import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/circular_color.dart';

class CircularColorList extends StatefulWidget {
  const CircularColorList({super.key});

  @override
  State<CircularColorList> createState() => _CircularColorListState();
}

class _CircularColorListState extends State<CircularColorList> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              activeIndex = index;
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: CircularColor(
                index: index,
                isActive: activeIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
