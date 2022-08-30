import 'package:flutter/material.dart';
import 'package:riverpod/models/task.dart';

import 'cListTile.dart';

class CustomListView extends StatelessWidget {

  List<Task> diziVer;
  dynamic fonksiyonVer;
  CustomListView({required this.diziVer, required this.fonksiyonVer});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: diziVer.length,
      padding: EdgeInsets.symmetric(horizontal: 20),
      itemBuilder: (context,index){
        return ListTile(
          title: Text(
            diziVer[index].name,
            style: TextStyle(
              decoration: diziVer[index].isDone? TextDecoration.lineThrough : null,
            ),
          ),
          trailing: Checkbox(
            onChanged: (value) {
              diziVer[index].isDone = value!;
              fonksiyonVer();
            },
            value: diziVer[index].isDone
          )
        );
      },
    );
  }
}


