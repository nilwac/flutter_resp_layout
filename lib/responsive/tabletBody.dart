import 'package:flutter/material.dart';
import 'package:flutter_responsive_layout/sidebars/navigation.dart';
import 'package:flutter_responsive_layout/sidebars/notifications.dart';
import 'package:provider/provider.dart';
import 'package:flutter_responsive_layout/providers.dart';

class MyTabletBody extends StatelessWidget {
  final Widget title;

  MyTabletBody({
    required this.title,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Notifications(),
      appBar: AppBar(
        title: title,
        actions: <Widget>[
          Builder(
              builder: (context) {
                return IconButton(
                  icon: const Icon(Icons.add_alert),
                  tooltip: 'Show Notifications',
                  onPressed: () { Scaffold.of(context).openEndDrawer(); },
                );
              }
          )
        ],
      ),
      body: Row(
        children: [
          SizedBox(
              width: 200,
              child: Navigation()),
          Expanded(
            child: context.watch<ContentDisplay>().child
          ),
        ],
      ),
    );
  }
}