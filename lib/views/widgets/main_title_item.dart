import 'package:flutter/material.dart';

class MainTitleItem extends StatelessWidget {
  const MainTitleItem({
    required this.mainTitle,
    super.key,
  });

  final String mainTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          // Implement the stroke
          Text(
            mainTitle,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 3,
              fontWeight: FontWeight.bold,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 3
                ..color = Colors.black,
            ),
          ),
          // The text inside
           Text(
            mainTitle,

            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style:const  TextStyle(
              fontSize: 20,
              letterSpacing: 3,
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
