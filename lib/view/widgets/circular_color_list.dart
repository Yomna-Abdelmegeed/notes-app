import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit.dart';
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
              setState(() {
                activeIndex = index;
              });

              BlocProvider.of<AddNoteCubit>(context)
                  .changeColor(kColorList[activeIndex]);
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
