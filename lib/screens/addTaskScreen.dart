import 'dart:ui';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/main.dart';
import 'package:riverpod/models/task.dart';
import 'package:riverpod/screens/task.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen();
  String metin="";
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
                debugPrint("addTaskScreen'in onpress'ine basildi");
                Provider.of<TaskProvider>(context,listen: false).diziyeEkle(metin);
                // Provider.of<TaskProvider>(context,listen: false) listen "false" olacak çünkü
                /*
                  On Event Handlers like onPressed, OnTap, onLongPressed etc. we must use
                  Provider.of<T>(context,listen:false)
                  reason being that they will not listen for any update changes, instead are responsible for making changes.

                  whereas widgets like Text etc. are responsible for displaying...hence need to be updated on every change made....therefore use

                  Link: https://stackoverflow.com/questions/59590673/flutter-app-crash-after-converting-provider-3-to-4
                */

                Navigator.pop(context); // görevi ekledğimizde geri dönmek için
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

