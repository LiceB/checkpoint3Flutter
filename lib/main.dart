import 'package:checkpoint3/screens/list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rede social',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListScreen(),
    );
  }
}
