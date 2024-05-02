// ignore_for_file: prefer_const_constructors

import 'package:anfeca_kn/configuration_page.dart';
import 'package:anfeca_kn/home_page.dart';
import 'package:flutter/material.dart';

import 'splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
