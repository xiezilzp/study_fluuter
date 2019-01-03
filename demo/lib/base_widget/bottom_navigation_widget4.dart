import 'package:flutter/material.dart';

class BottomNavigationWidget4 extends StatefulWidget {
  _BottomNavigationWidgetState4 createState() =>
      _BottomNavigationWidgetState4();
}

class _BottomNavigationWidgetState4 extends State<BottomNavigationWidget4> {
  // final MaterialColor _bottomNormal = Colors.blueGrey;
  // final MaterialColor _bottomPress = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange[400],
        tooltip: '发表',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.orange[400],
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
              tooltip: '首页',
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.refresh),
              tooltip: '偶遇佳句',
            )
          ],
        ),
      ),
    );
  }
}
