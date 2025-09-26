import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.onSaved,
    this.onChanged,
  });
  final String hintText;
  final int maxLines;
  final Function(String?)? onSaved;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      onChanged: onChanged,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "field is required";
        } else {
          return null;
        }
      },
      cursorColor: Colors.white,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        border: customBorder(Colors.white),
        enabledBorder: customBorder(Colors.white),
        focusedBorder: customBorder(Color(0xffD0E4EE)),
        errorBorder: customBorder(Colors.redAccent),
        focusedErrorBorder: customBorder(Colors.redAccent),
      ),
    );
  }

  OutlineInputBorder customBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(
        color: color,
        width: 1.2,
      ),
    );
  }
}
