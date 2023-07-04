import 'package:flutter/material.dart';
import 'package:noteapp/core/utils/styles.dart';

import 'main_title_item.dart';

class ItemListNotes extends StatelessWidget {
  const ItemListNotes({
    required this.index,
    required this.date,
    required this.headNote,
    required this.note,
    required this.function,
    super.key,
  });

  final String headNote, note, date;
  final int index;
  final Function() function;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 25, right: 30),
      child: InkWell(
        onTap:function,
        child: Container(
          height: height * 0.2,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.deepOrangeAccent,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Column(
              children: [
                Center(
                  child: MainTitleItem(mainTitle: headNote),
                ),
                ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Text(
                        index.toString(),
                        style: StyleApp.textStyle18.copyWith(color: Colors.white),
                      )),
                  title: Text(note, maxLines: 3, overflow: TextOverflow.ellipsis),
                  subtitle: Text(date),
                  trailing: const Icon(Icons.delete),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
