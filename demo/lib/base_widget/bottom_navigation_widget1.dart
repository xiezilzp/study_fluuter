import 'package:flutter/material.dart';
import 'package:demo/pages/home_screen.dart';
import 'package:demo/pages/random_screen.dart';
import 'package:demo/pages/category_screen.dart';
import 'package:demo/pages/my_screen.dart';

class BottomNavigationWidget1 extends StatefulWidget {
  _BottomNavigationWidgetState1 createState() =>
      _BottomNavigationWidgetState1();
}

class _BottomNavigationWidgetState1 extends State<BottomNavigationWidget1> {
  final MaterialColor _BottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> _ScreenItems = List();
  void initState() {
    _ScreenItems
      ..add(HomeScreen())
      ..add(RandomScreen())
      ..add(CategoryScreen())
      ..add(MyScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _ScreenItems[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: _BottomNavigationColor),
                title: Text('首页',
                    style: TextStyle(color: _BottomNavigationColor))),
            BottomNavigationBarItem(
                icon: Icon(Icons.cached, color: _BottomNavigationColor),
                title: Text('偶遇佳句',
                    style: TextStyle(color: _BottomNavigationColor))),
            BottomNavigationBarItem(
                icon: Icon(Icons.category, color: _BottomNavigationColor),
                title: Text('分类',
                    style: TextStyle(color: _BottomNavigationColor))),
            BottomNavigationBarItem(
                icon: Icon(Icons.portrait, color: _BottomNavigationColor),
                title: Text('我的',
                    style: TextStyle(color: _BottomNavigationColor))),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: _onItemTapped),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
