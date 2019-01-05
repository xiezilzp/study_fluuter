import 'package:flutter/material.dart';
import 'package:bookworm/widget/bw_widget_bottom_navigation.dart';

void main() => runApp(MyApp());

/**
 * 入口
 */
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '书虫',
      theme: ThemeData(
          primarySwatch: Colors.lightGreen,
          highlightColor: Colors.white54,
          splashColor: Colors.white70),
      home: BWBottomNavigation(),
    );
  }
}