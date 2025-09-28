import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CircularColor extends StatelessWidget {
  const CircularColor({super.key, required this.isActive, required this.index});

  final bool isActive;
  final int index;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: isActive ? 29 : 25,
      child: CircleAvatar(
        backgroundColor: kColorList[index],
        radius: 25,
      ),
    );
  }
}
