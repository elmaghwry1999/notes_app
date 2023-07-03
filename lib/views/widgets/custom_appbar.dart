import 'package:flutter/material.dart';
import 'package:noteapp/core/utils/styles.dart';
import 'package:noteapp/views/widgets/search_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(
          top: height * 0.06,
          bottom: 0.04,
          left: width * 0.03,
          right: width * 0.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
         const  Text(
            'Notes',
            style: StyleApp.textStyle30,
          ),
          SearchIconButton(function: (){
             print('ahme');
          }),
        ],
      ),
    );
  }
}

