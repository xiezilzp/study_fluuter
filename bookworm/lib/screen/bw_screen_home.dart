import 'package:flutter/material.dart';
import 'package:bookworm/widget/bw_widget_drawer.dart';
import 'package:bookworm/screen/home/bw_screen_tab_recommend.dart';
import 'package:bookworm/screen/home/bw_screen_tab_category.dart';

class HomeScreen extends StatefulWidget {
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: PreferredSize(
          child: AppBar(
            // centerTitle: false,
            title: 
            SizedBox(
              child: TabBar(
                controller: _tabController,
                unselectedLabelColor: Colors.black38,
                indicatorColor: Colors.black54,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 1.0,
                tabs: <Widget>[Tab(text: '推荐'), Tab(text: '分类')],
              ),
              width: 150.0,
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: '搜索',
                onPressed: () => debugPrint('搜索'),
              )
            ],
          ),
          preferredSize: Size.fromHeight(56),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[BWTabItemRecommend(), BWTabItemCategory()],
        ),
        drawer: BWDrawer(),
      ),
    );
  }
}
