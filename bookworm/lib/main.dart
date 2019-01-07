import 'package:flutter/material.dart';
import './bw_constants.dart' show AppColors;
import './screen/bw_screen_main.dart';
// import './widget/bw_widget_bottom_navigation.dart';

void main() => runApp(MyApp());

/**
 * 入口
 */
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '书虫',
      theme: ThemeData.light().copyWith(
        // primaryIconTheme: IconThemeData(
        //   color: Colors.pink
        // ),
        // accentIconTheme: IconThemeData(
        //   color: Colors.pink
        // ),
        // iconTheme: IconThemeData(
        //   color: Colors.pink
        // ),
        // primaryColorLight: Colors.pink,
        // primaryColorDark: Colors.pink,
        // bottomAppBarColor: Colors.pink,
        // accentColor: Colors.pink,
        // buttonColor: Colors.pink,
        // toggleableActiveColor: Colors.pink,
        // cursorColor: Colors.pink,
        // backgroundColor: Colors.pink,
        // cardColor: Colors.pink,
        // disabledColor: Colors.pink,
        // dividerColor: Colors.pink,
        // errorColor: Colors.pink,
        // highlightColor: Colors.pink,
        // hintColor: Colors.pink,
        // indicatorColor: Colors.pink,
        // dialogBackgroundColor: Colors.pink,
        // secondaryHeaderColor: Colors.pink,
        // selectedRowColor: Colors.pink,
        // textSelectionColor: Colors.pink,
        // textSelectionHandleColor: Colors.pink,
        // unselectedWidgetColor: Colors.pink,
        canvasColor: AppColors.AppPrimaryColor, // bottomNavigationBarBG色
        primaryColor: AppColors.AppPrimaryColor, // 主颜色
        primaryTextTheme: TextTheme(title: TextStyle(color: AppColors.AppTitleColor)), // 主文字颜色
        splashColor: AppColors.AppSplashColor, // 点击颜色
        scaffoldBackgroundColor: Colors.white, // 背景色
      ),
      // home: BWBottomNavigation(),
      home: MainScreen(),
    );
  }
}
