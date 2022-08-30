import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  String gorevVer;
  bool tamamlandiMi;
  dynamic fonksiyonVer;
  CustomListTile({required this.gorevVer, required this.tamamlandiMi, required this.fonksiyonVer});


  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          gorevVer,
          style: TextStyle(
            decoration: tamamlandiMi? TextDecoration.lineThrough : null,
          ),
        ),
        
    );
  }
  

}

