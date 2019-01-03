import 'package:flutter/material.dart';
import 'package:demo/pages/home_screen.dart';
import 'package:demo/pages/random_screen.dart';
import 'package:demo/pages/category_screen.dart';
import 'package:demo/pages/my_screen.dart';

class BottomNavigationWidget3 extends StatefulWidget {
  _BottomNavigationWidgetState3 createState() =>
      _BottomNavigationWidgetState3();
}

class _BottomNavigationWidgetState3 extends State<BottomNavigationWidget3> {
  final MaterialColor _BottomNavigationColor_Normal = Colors.blue;
  // final MaterialColor _BottomNavigationColor_Active = Colors.blue;
  int _CurrentIndex = 0;
  List<Widget> _ItemScreens = List();

  void initState() {
    _ItemScreens
      ..add(HomeScreen())
      ..add(RandomScreen())
      ..add(CategoryScreen())
      ..add(MyScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _ItemScreens[_CurrentIndex],
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: '发表',
          child: Icon(
            Icons.add,
            color: Colors.white,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: _BottomNavigationColor_Normal),
              title: Text('首页',
                  style: TextStyle(color: _BottomNavigationColor_Normal))),
          BottomNavigationBarItem(
              icon: Icon(Icons.refresh, color: _BottomNavigationColor_Normal),
              title: Text('偶遇佳句',
                  style: TextStyle(color: _BottomNavigationColor_Normal))),
          BottomNavigationBarItem(
              icon: Icon(Icons.category, color: _BottomNavigationColor_Normal),
              title: Text('分类',
                  style: TextStyle(color: _BottomNavigationColor_Normal))),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: _BottomNavigationColor_Normal),
              title: Text('我的',
                  style: TextStyle(color: _BottomNavigationColor_Normal))),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _CurrentIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _CurrentIndex = index;
    });
  }
}