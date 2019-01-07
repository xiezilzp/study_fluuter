import 'package:flutter/material.dart';

class FindScreen extends StatefulWidget {
  _FindScreenState createState() => _FindScreenState();
}

class _FindScreenState extends State<FindScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Text('find'),
      ),
    );
  }
}
