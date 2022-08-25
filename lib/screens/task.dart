import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        margin: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30.0,
              child: Icon(
                Icons.list,
                size: 30.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
                "Todoey",
                style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 50,
              ),
            )
          ],


        ),
      ),
    );
  }
}