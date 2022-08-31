import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:riverpod/main.dart';
import 'package:riverpod/models/task.dart';
import 'package:riverpod/screens/addTaskScreen.dart';

import '../widgets/cListView.dart';


class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);




  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed:() {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context)=>SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: AddTaskScreen()
              ),
            ),
          );
        },
        child: const Icon(
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
              children:  [
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
    
                Consumer<TaskProvider>(
                  builder: (context, value, child) {
                    return Text(
                      "${value.diziUzunkugu()} task",
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      ),
                    );
                  }, 
                )
              ],
            ),
          ),
    
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: CustomListView(),
              
            ),
          )
        ],
      ),
    );
  }
}

