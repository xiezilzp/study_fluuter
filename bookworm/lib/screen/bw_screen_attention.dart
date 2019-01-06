import 'package:flutter/material.dart';

class AttentionScreen extends StatefulWidget {
  _AttentionScreenState createState() => _AttentionScreenState();
}

class _AttentionScreenState extends State<AttentionScreen> {
  TabController _tabController;
  @override
  Widget build(BuildContext context) {
    // return CustomScrollView(slivers: <Widget>[
    //   SliverAppBar(
    //     automaticallyImplyLeading: false,
    //     leading: GestureDetector(
    //       child: Icon(Icons.arrow_back),
    //       onTap: () => Navigator.pop(context),
    //     ),
    //     actions: <Widget>[
    //       IconButton(
    //           icon: Icon(Icons.search),
    //           tooltip: '搜索',
    //           onPressed: () => debugPrint('搜索'))
    //     ],
    //     expandedHeight: 100.0,
    //     elevation: 4.0,
    //     forceElevated: true,
    //     primary: true,
    //     floating: false,
    //     pinned: true,
    //     snap: false,
    //     flexibleSpace: FlexibleSpaceBar(
    //       title: Text('data'),
    //     ),
    //     bottom: TabBar(
    //       controller: _tabController,
    //       unselectedLabelColor: Colors.black38,
    //       indicatorColor: Colors.black54,
    //       indicatorSize: TabBarIndicatorSize.label,
    //       indicatorWeight: 1.0,
    //       tabs: <Widget>[Tab(text: '推荐'), Tab(text: '分类')],
    //     ),
    //   ),
    //   SliverFixedExtentList(
    //     itemExtent: 150.0,
    //     delegate: SliverChildBuilderDelegate((context, index) => ListTile(
    //           title: Text("List item $index"),
    //         )),
    //   )
    // ]);
    return Text('data');
  }
}
