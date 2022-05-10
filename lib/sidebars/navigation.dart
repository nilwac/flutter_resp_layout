import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:flutter_responsive_layout/providers.dart';
import 'package:flutter_responsive_layout/pages/page1.dart';
import 'package:flutter_responsive_layout/pages/page2.dart';
import 'package:flutter_responsive_layout/pages/page3.dart';
import 'package:flutter_responsive_layout/pages/page4.dart';
import 'package:flutter_responsive_layout/pages/page5.dart';

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: Center(child: Text('Menu')),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Page 1'),
            onTap: () {
              context.go('/');
              context.read<ContentDisplay>().set_child(Page1());
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Page 2'),
            onTap: () {
              context.read<ContentDisplay>().set_child(Page2());
              context.go('/2');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Page 3'),
            onTap: () {
              context.read<ContentDisplay>().set_child(Page3());
              context.go('/3');
            },
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Page 4'),
            onTap: () {
              context.read<ContentDisplay>().set_child(Page4());
              context.go('/4');
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Page 5'),
            onTap: () {
              context.read<ContentDisplay>().set_child(Page5());
              context.go('/5');
            },
          ),
        ],
      ),
    );
  }
}