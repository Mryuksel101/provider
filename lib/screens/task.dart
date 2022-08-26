import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed:() {
          
        },
        child: Icon(
          Icons.add,
        ),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  foregroundColor: Colors.lightBlue,
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
                ),

                Text(
                    "12 task",
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                )
              ],


            ),
          ),

          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 20),
                children: [
                  ListTile(
                      title: Text(
                        'Buy milk',
                      ),
                      trailing: Icon(
                        Icons.check_box_outline_blank
                      ),
                  ),

                  ListTile(
                    title: Text(
                      'Buy eggs',
                    ),
                    trailing: Icon(
                      Icons.check_box_outline_blank
                    ),
                  )
                ],
              ),
              
            ),
          )
        ],
      ),
    );
  }
}