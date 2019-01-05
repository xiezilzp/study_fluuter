import 'package:flutter/material.dart';

class BWDrawer extends StatefulWidget {
  _bWDrawerState createState() => _bWDrawerState();
}

class _bWDrawerState extends State<BWDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName:
                Text('Eagle', style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text('lizhengpei@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'http://img.hb.aicdn.com/5bab06e25cec467a151e3588940ff07d302d6d987796-EUWjcF_fw658'),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://negativespace.co/wp-content/uploads/2018/12/negative-space-sunny-day-through-palm-trees-1062x708.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.lightGreen[400].withOpacity(0.8),
                        BlendMode.hardLight))),
          ),
          ListTile(
              leading: Icon(Icons.create),
              title: const Text('我的句子'),
              // subtitle: Text(''),
              onTap: () => Navigator.pop(context)),
          ListTile(
            leading: Icon(Icons.favorite),
            title: const Text('喜欢收藏'),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: const Text('帮助反馈'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: const Text('系统设置'),
          ),
        ],
      ),
    );
  }
}
