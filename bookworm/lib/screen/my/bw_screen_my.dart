import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 150.0,
            padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 00.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://randomuser.me/api/portraits/men/55.jpg'),
                  backgroundColor: Colors.black,
                  radius: 35.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'sSs+',
                        style: TextStyle(
                            fontSize: 18.0,
                            height: 1.3,
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        '点击查看个人主页',
                        style: TextStyle(
                            color: Colors.black26,
                            fontSize: 14.0,
                            height: 1.3,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Text('关注',textAlign: TextAlign.center,),
                ),
                Container(
                  width: 1.0,
                  height: 30.0,
                  color: Colors.black12,
                ),
                Expanded(
                  flex: 2,
                  child: Text('句子'),
                ),
                Container(
                  width: 1.0,
                  height: 30.0,
                  color: Colors.black12,
                ),
                Expanded(
                  flex: 2,
                  child: Text('喜欢'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
