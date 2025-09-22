import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xffD0E4EE),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
            child: Text(
          'Add',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        )),
      ),
    );
  }
}
