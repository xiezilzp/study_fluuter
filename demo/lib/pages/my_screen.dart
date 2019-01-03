import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的句库'),
      ),
      body: Center(child: Text('我的句库'),),
    );
  }
}