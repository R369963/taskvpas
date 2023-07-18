import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:task/screens/DashBoard.dart';
import 'package:task/screens/Login.dart';
  void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:   Login( ),
    );
  }
}




