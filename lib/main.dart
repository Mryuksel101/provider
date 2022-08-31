import 'package:flutter/material.dart';
import 'package:riverpod/screens/task.dart';
//deneme
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TaskScreen(),
    );
  }
}
