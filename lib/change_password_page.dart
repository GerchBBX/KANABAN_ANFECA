
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ChangePassWordPage extends StatefulWidget{
  const ChangePassWordPage({super.key});

  @override
  State<ChangePassWordPage> createState() => _ChangePassWordPage();

}

class _ChangePassWordPage extends State<ChangePassWordPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cambio de Contraseña...'
        ),
      ),

      body: Container(
         decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF40DA62), // Color de arriba
              Color(0xFF65A9DA), // Color de abajo
            ]
          )
        ),     
      ),
    );
  }

}
