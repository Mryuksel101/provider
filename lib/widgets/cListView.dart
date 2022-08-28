import 'package:flutter/material.dart';
import 'package:riverpod/models/task.dart';

import 'cListTile.dart';

class CustomListView extends StatefulWidget {
  const CustomListView({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  List <Task> task = [
    Task(name: "Flutter projeni tamamla"),
    Task(name: "Date'e cık"),
    Task(name: "Youtube videosu cek")
  ];

  
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: task.length,
      padding: EdgeInsets.symmetric(horizontal: 20),
      itemBuilder: (context,index){
        return CustomListTile(
          gorevVer: task[index].name,
          tamamlandiMi: task[index].isDone,
          fonksiyonVer: (bool? value){
            setState(() {
              task[index].isDone = value!;
            });
          }
        );
      },
    );
  }
}

