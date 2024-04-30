// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(milliseconds: 550), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xFF40DA62), // Color de arriba
              Color(0xFF65A9DA), // Color de abajo
            ])),
        child: Center(
          child: Transform.rotate(
            angle: 45 * 3.1415926535 / 180,
            child: Text(
              'KN',
              style: TextStyle(
                fontSize: 100,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
