import 'package:flutter/material.dart';

class BottomNavigationWidget2 extends StatefulWidget {
  _BottomNavigationWidget2State createState() =>
      _BottomNavigationWidget2State();
}

class _BottomNavigationWidget2State extends State<BottomNavigationWidget2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: '发表',
        child: Icon(
          Icons.add,
          color: Colors.white
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.lightBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            IconButton(
              tooltip: '首页',
              onPressed: (){},
              icon: Icon(Icons.home),
              color: Colors.white
            ),
            IconButton(
              tooltip: '偶遇佳句',
              onPressed: (){},
              icon: Icon(Icons.refresh),
              color: Colors.white
            ),
            IconButton(
              tooltip: '分类',
              onPressed: (){},
              icon: Icon(Icons.category),
              color: Colors.white
            ),
            IconButton(
              tooltip: '我的',
              onPressed: (){},
              icon: Icon(Icons.person),
              color: Colors.white
            ),
          ],
        ),
      ),
    );
  }
}
