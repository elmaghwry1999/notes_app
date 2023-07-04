
import 'package:flutter/material.dart';

import 'custom_text_form_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 20,),
      CustomTextFormField(labelText: 'title',),
      SizedBox(height: 20,),
      CustomTextFormField(labelText: 'content',maxLine: 10),
    ],);
  }
}

