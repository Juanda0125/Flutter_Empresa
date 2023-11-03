import 'package:flutter/material.dart';
import 'package:flutter_empresa/menu.dart';


void main(){
  runApp(const EjemploListViews());
}

class EjemploListViews extends StatelessWidget {
  const EjemploListViews({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Menu(),
    );
  }
}