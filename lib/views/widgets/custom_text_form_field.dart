import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    required this.labelText,
    this.maxLine=1,
    super.key,
  });
final String labelText;
final int maxLine;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor:
      Colors.cyanAccent,
      maxLines: maxLine,
      decoration: InputDecoration(
          label: Text(labelText),
          border:   OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),

          )
      ),
    );
  }
}
