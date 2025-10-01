import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/view/widgets/circular_color.dart';

class CircularEditColorList extends StatefulWidget {
  const CircularEditColorList(
      {super.key, required this.onColorSelected, required this.activeColor});
  final int activeColor;
  final ValueChanged<Color> onColorSelected;

  @override
  State<CircularEditColorList> createState() => _CircularEditColorListState();
}

class _CircularEditColorListState extends State<CircularEditColorList> {
  int activeIndex = 0;

  @override
  void initState() {
    super.initState();
    final index = kColorList.indexWhere(
      (color) => color.value == widget.activeColor,
    );

    if (index != -1) {
      activeIndex = index;
    }
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
              widget.onColorSelected(kColorList[activeIndex]);
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
