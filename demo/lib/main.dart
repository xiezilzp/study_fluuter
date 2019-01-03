import 'package:flutter/material.dart';
import 'package:demo/base_widget/bottom_navigation_widget4.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '句子迷',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: BottomNavigationWidget4(),
    );
  }
}
