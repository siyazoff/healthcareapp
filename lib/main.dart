// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mentalhealthapp/pages/bar_of_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bar(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
