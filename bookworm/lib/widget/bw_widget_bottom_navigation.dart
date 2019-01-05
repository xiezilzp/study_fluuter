import 'package:flutter/material.dart';
import 'package:bookworm/screen/bw_screen_home.dart';
import 'package:bookworm/screen/bw_screen_attention.dart';
import 'package:bookworm/screen/bw_screen_message.dart';
import 'package:bookworm/screen/bw_screen_my.dart';

/**
 * 主框架及底部菜单
 */
class BWBottomNavigation extends StatefulWidget {
  _BWBottomNavigationState createState() => _BWBottomNavigationState();
}

class _BWBottomNavigationState extends State<BWBottomNavigation> with AutomaticKeepAliveClientMixin {

  @override
  bool get wantKeepAlive => true;

  int _currenIndex = 0;
  List<Widget> _screenItems = List();

  void initState() {
    super.initState();
    _screenItems
      ..add(HomeScreen())
      ..add(AttentionScreen())
      ..add(MessageScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screenItems[_currenIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), title: Text('关注')),
            BottomNavigationBarItem(icon: Icon(Icons.message), title: Text('消息')),
          ],
          currentIndex: _currenIndex,
          type: BottomNavigationBarType.fixed,
          onTap: _onItemTapped,
        ));
  }

  void _onItemTapped(int index) {
    setState(() {
      _currenIndex = index;
    });
  }
}