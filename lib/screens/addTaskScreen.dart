import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:riverpod/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  String? metin;
  dynamic fonksiyonVer;
  List <Task> diziVer;
  AddTaskScreen({required this.fonksiyonVer, required this.diziVer});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff757575),
        border: Border.all(
          width: 0.0,
          color: Color(0xff757575),
        ),
      ),

      child: Container(
        padding: EdgeInsets.all(
          20.0,
        ),
        decoration:BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add text",
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              onChanged: (change){
                metin = change;
              },
            ),

            SizedBox(
              height: 20.0,
            ),

            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                
              ),
              onPressed: () {
                diziVer.add(Task(name: metin!));
                fonksiyonVer();
              },
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
      
    );
  }
}

