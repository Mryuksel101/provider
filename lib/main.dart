

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:riverpod/models/task.dart';
import 'package:riverpod/screens/task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: const MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}


class TaskProvider extends ChangeNotifier{
  List <Task> task = [
    Task(name: "Flutter projeni tamamla"),
    Task(name: "Date'e cık"),
    Task(name: "Youtube videosu cek")
  ];

  void diziyeEkle(String gorev){
    task.add(
      Task(name: gorev)
    );
    notifyListeners();
  }

  String diziUzunkugu(){
    return "${task.length}";
  }

  String diziIndex(int sira){
    return task[sira].name;
  }

  bool isDoneKontrol(int sira){
    return task[sira].isDone;
  }

  

  void notifyEris(){
    notifyListeners();
  }

  void isDoneDegistir(int sira, bool valuex){
    task[sira].isDone= valuex;
     notifyListeners();
  }

  void gorevSil({required Task taskCounstructer, required int sira, required context}){
    if(task[sira].isDone==true){
      task.remove(taskCounstructer);
      notifyListeners();
    }
    
    else{
      debugPrint("elsedeyiz");
      showDialog(
        context:context,
        builder: (context) => AlertDialog(
          title: const Text(
            'Görevi kaldırmadan önce tamamla lütfen',
            style: TextStyle(
              fontWeight: FontWeight.normal,
            ),
          ),
        ),

        
      );
    }
  }
}

