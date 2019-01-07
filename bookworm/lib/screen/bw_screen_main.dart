import 'package:flutter/material.dart';
import './home/bw_screen_home.dart';
import './find/bw_screen_find.dart';
import './my/bw_screen_my.dart';
import '../bw_constants.dart' show AppColors, Constans;

class NavigationIconView {
  final BottomNavigationBarItem item;

  NavigationIconView({Key key, String title, IconData icon})
      : item = BottomNavigationBarItem(
          icon: Icon(icon),
          title: Text(title),
        );
}

class MainScreen extends StatefulWidget {
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // 底部菜单
  int _currentIndex = 0;
  List<NavigationIconView> _navigationViews;

  // 页面管理
  List<Widget> _screenItems;

  @override
  void initState() {
    super.initState();
    _navigationViews = [
      NavigationIconView(
          title: '首页',
          icon: IconData(0xe630, fontFamily: Constans.AppIconFontFamily)),
      NavigationIconView(
          title: '发现',
          icon: IconData(0xe657, fontFamily: Constans.AppIconFontFamily)),
      NavigationIconView(
          title: '我的',
          icon: IconData(0xe636, fontFamily: Constans.AppIconFontFamily)),
    ];

    _screenItems = [HomeScreen(), FindScreen(), MyScreen()];
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar botNavBar = BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: AppColors.AppIconActivateColor,
        items: _navigationViews.map((NavigationIconView view) {
          return view.item;
        }).toList(),
        onTap: (int index) {
          setState(() {
            print(index);
            _currentIndex = index;
          });
        });

    return Scaffold(
        bottomNavigationBar: botNavBar, body: _screenItems[_currentIndex]);
  }
}
