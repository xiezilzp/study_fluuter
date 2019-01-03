import 'package:flutter/material.dart';

void main() => runApp(MyApp(items: [
      'http://img5.mtime.cn/mt/2018/11/23/093305.73817166_100X140X4.jpg',
      'http://img5.mtime.cn/mt/2018/11/27/093050.43811794_100X140X4.jpg',
      'http://img5.mtime.cn/mt/2018/10/22/104316.77318635_100X140X4.jpg',
      'http://img5.mtime.cn/mt/2018/11/29/103346.50772953_100X140X4.jpg',
      'http://img5.mtime.cn/mt/2018/10/17/085012.20600355_100X140X4.jpg',
    ]));

class MyApp extends StatelessWidget {
  final List<String> items;

  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
        ),
        body: Center(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 2.0,
              crossAxisSpacing: 2.0,
              childAspectRatio: 0.7
            ),
            itemBuilder: (context, index) {
              return GridTile(
                child: new Image.network(
                  items[index],
                  fit: BoxFit.cover,
                ),
              );
            },
            itemCount: items.length,
          ),
        ),
      ),
    );
  }
}