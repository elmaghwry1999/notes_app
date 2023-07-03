import 'package:flutter/material.dart';

class SearchIconButton extends StatelessWidget {
  const SearchIconButton({
    required this.function,
    super.key,
  });

  final Function() function;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      focusColor: Colors.white,
      child: Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          color: Colors.white54.withOpacity(0.1),
          borderRadius: BorderRadius.circular(5),
        ),
        child: const Icon(Icons.search, size: 28),
      ),
    );
  }
}
