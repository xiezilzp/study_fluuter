import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('句子迷'),
      ),
      body: Center(child: Text('首页'),),
    );
  }
}