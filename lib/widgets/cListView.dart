import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:riverpod/main.dart';
import 'package:riverpod/models/task.dart';

import 'cListTile.dart';

class CustomListView extends StatelessWidget {
  CustomListView();
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (BuildContext context, value, Widget? child) { 
        return ListView.builder(
          itemCount: int.parse(value.diziUzunkugu()),
          padding: EdgeInsets.symmetric(horizontal: 20),
          itemBuilder: (context,index){
            return ListTile(
              title: Text(
                value.diziIndex(index),
                style: TextStyle(
                  decoration: value.isDoneKontrol(index)? TextDecoration.lineThrough : null,
                ),
              ),
              onLongPress: (){
                debugPrint("long presss");
                return value.gorevSil(
                  taskCounstructer: value.task[index],
                  sira: index,
                  context: context,
                );
              },
              trailing: Checkbox(
                onChanged: (valuex) {
                  
                  value.isDoneDegistir(index, valuex!);
                },
                value: value.isDoneKontrol(index),
              )
            );
          },
        );
       },
    );
  }
}


