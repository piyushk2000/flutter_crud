import 'package:flutter/material.dart';
import 'package:note_app/add_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NOTES APP',
      theme: ThemeData(primarySwatch: Colors.blue, brightness: Brightness.dark),
      home: AddPage(),
    );
  }
}
