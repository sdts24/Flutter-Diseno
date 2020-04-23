import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.indigo),
            accountName: Text('Starlyng Trindad'),
            accountEmail: Text('sdts24@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(
                'ST',
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Básico'),
            onTap: () {
              Navigator.pushNamed(context, 'basico');
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Botones'),
            onTap: () {
              Navigator.pushNamed(context, 'botones');
            },
          ),
          ListTile(
            leading: Icon(Icons.format_list_numbered),
            title: Text('Scroll'),
            onTap: () {
              Navigator.pushNamed(context, 'scroll');
            },
          ),
        ],
      ),
    );
  }

}