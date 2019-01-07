import 'package:flutter/material.dart';
import '../../bw_constants.dart' show AppColors, AppStyle, Constans;
import 'dart:ui';

class ActionIconButton {
  final IconButton item;

  ActionIconButton(
      {Key key,
      @required int iconData,
      String tooltip,
      Color iconColor,
      @required onPressed})
      : item = IconButton(
          icon: Icon(
            IconData(iconData, fontFamily: Constans.AppIconFontFamily),
            color: iconColor,
          ),
          tooltip: tooltip,
          onPressed: onPressed,
          padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
        );
}

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // 屏幕宽高
  double _width = window.physicalSize.width / window.devicePixelRatio;
  double _height = window.physicalSize.height / window.devicePixelRatio;

  // ActionItems
  List<ActionIconButton> _actionIconButton;

  // 首页点赞
  static bool _isPraise = false;
  Color _iconColor = AppColors.AppIconNormalColor;

  @override
  void initState() {
    _actionIconButton = [
      ActionIconButton(
          iconData: 0xe638,
          tooltip: '评论',
          iconColor: AppColors.AppIconNormalColor,
          onPressed: () {}),
      ActionIconButton(
          iconData: 0xe63d,
          tooltip: '点赞',
          iconColor: _iconColor,
          onPressed: () {
            setState(() {
              _isPraise = !_isPraise;
              _iconColor = _isPraise
                  ? AppColors.AppIconPraiseColor
                  : AppColors.AppIconNormalColor;
              print(_iconColor);
            });
          })
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('书虫', style: AppStyle.AppTitleStyle),
        elevation: 0.0,
        actions: _actionIconButton.map((ActionIconButton view) {
          return view.item;
        }).toList(),
      ),
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.bottomStart,
            overflow: Overflow.clip,
            children: <Widget>[
              Image.asset(
                'assets/images/002.jpg',
                color: Colors.black,
                colorBlendMode: BlendMode.colorDodge,
                width: _width,
                height: _width * 0.6,
                fit: BoxFit.fill,
              ),
              Positioned(
                  left: 20.0,
                  bottom: -45.0,
                  child: Text(
                    '31',
                    style: TextStyle(color: Colors.white, fontSize: 100.0),
                  )),
              Positioned(
                top: 20.0,
                right: 30.0,
                width: 12.0,
                child: Text('戊戌狗年',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.white, fontSize: 12.0, height: 0.9)),
              ),
              Positioned(
                top: 20.0,
                right: 55.0,
                width: 12.0,
                child: Text('乙丑月癸卯日',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.white, fontSize: 12.0, height: 0.9)),
              ),
              Positioned(
                top: 20.0,
                right: 80.0,
                width: 12.0,
                child: Text('腊月初一',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.white, fontSize: 12.0, height: 0.9)),
              )
            ],
          ),
          Stack(
            alignment: AlignmentDirectional.topStart,
            overflow: Overflow.clip,
            children: <Widget>[
              Container(
                width: _width,
                padding: EdgeInsets.only(right: 30.0),
                child: Text('2019.01 星期日',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: Colors.black54, fontSize: 12.0, height: 1.5)),
              ),
              Positioned(
                top: -72.0,
                left: 20.0,
                child: SizedBox(
                    width: _width,
                    child: Text(
                      '31',
                      style: TextStyle(color: Colors.black, fontSize: 100.0),
                    )),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '你感觉到隔膜，前提应该是你有沟通的愿望，你对那些你不曾想到要与之沟通的人是不会感觉到隔膜的。',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black54,
                      letterSpacing: 1.2,
                      height: 1.2),
                ),
                SizedBox(
                  width: _width,
                  child: Text(
                    '周国平《爱与孤独》',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black54,
                        letterSpacing: 1.2,
                        height: 2),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    ));
  }
}
