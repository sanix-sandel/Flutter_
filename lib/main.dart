import 'package:flutter/material.dart';
import 'package:flutter_widgets/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Starter Template',
      theme: ThemeData(
        primaryColor: Colors.lightGreen,
      ),
      home: Home(),
    );
  }
}
