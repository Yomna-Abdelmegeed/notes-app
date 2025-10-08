import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/view/widgets/circular_color.dart';

class CircularEditColorList extends StatefulWidget {
  const CircularEditColorList(
      {super.key, required this.note, required this.onColorChanged});
  final NoteModel note;
  final ValueChanged<Color> onColorChanged;

  @override
  State<CircularEditColorList> createState() => _CircularEditColorListState();
}

class _CircularEditColorListState extends State<CircularEditColorList> {
  late int activeIndex;

  @override
  void initState() {
    super.initState();
    final index = kColorList.indexOf(Color(widget.note.color));

    activeIndex = index;
  }

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
              setState(() {
                activeIndex = index;
              });
              widget.note.color = kColorList[activeIndex].value;
              widget.onColorChanged(kColorList[activeIndex]);
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
