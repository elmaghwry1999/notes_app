import 'package:flutter/material.dart';

import 'main_title_item.dart';

class ItemListNotes extends StatelessWidget {
  const ItemListNotes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 25, right: 30),
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
            children:const [
              Center(
                child: MainTitleItem(mainTitle: 'Mokh'),
              ),
              ListTile(
                leading: CircleAvatar(child: Text('1'),backgroundColor: Colors.white),
                title: Text('Headline',maxLines:3 ,overflow: TextOverflow.ellipsis),
                subtitle: Text('22/7'),

                trailing: Icon(Icons.delete),
              )
            ],
          ),
        ),
      ),
    );
  }
}
