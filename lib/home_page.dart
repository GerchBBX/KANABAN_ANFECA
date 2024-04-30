// ignore_for_file: prefer_const_constructors, no_logic_in_create_state, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Color(0xFF40DA62),
        backgroundColor: Color(0xFFD0E5F4),
        animationDuration: Duration(milliseconds: 275),
        animationCurve: Curves.easeIn,
        items: <Widget>[
          Icon(Icons.play_circle, size: 30),
          Icon(Icons.eco, size: 30),
          Icon(Icons.settings, size: 30),
        ],
        onTap: (index) {
        //Handle button tap
        },
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFD0FBDA),
              Color(0xFFD0E5F4),
            ],
          ),
        ),
        
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45),
        child: AppBar(
          leading: IconButton(
            icon: Icon(Icons.chevron_left),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
          backgroundColor: Color(0xFF40DA62),
            title: Text(
              "Menú Principal",
              style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
      ),            
    );
  }
}
