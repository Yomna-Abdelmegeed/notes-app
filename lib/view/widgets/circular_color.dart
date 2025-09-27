
import 'package:flutter/material.dart';

class CircularColor extends StatelessWidget {
  const CircularColor({super.key, required this.isActive, required this.index});

  final bool isActive;
  final int index;
  final List<Color> colorList = const [
    Color(0xFFE0BBE4),
    Color(0xFF957DAD),
    Color(0xFFD291BC),
    Color(0xFFFEC8D8),
    Color(0xFFFFDFD3),
    Color(0xFFFFF1B5),
    Color(0xFFB5EAD7),
    Color(0xFFC7CEEA),
    Color(0xFFA0CED9),
    Color(0xFFB8E0D2),
  ];
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: isActive ? 28 : 25,
      child: CircleAvatar(
        backgroundColor: colorList[index],
        radius: 25,
      ),
    );
  }
}

