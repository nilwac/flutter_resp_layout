import 'package:flutter/material.dart';
import 'package:flutter_responsive_layout/sidebars/navigation.dart';
import 'package:flutter_responsive_layout/sidebars/notifications.dart';
import 'package:provider/provider.dart';
import 'package:flutter_responsive_layout/providers.dart';

class MyMobileBody extends StatelessWidget {
  final Widget  title;

  const MyMobileBody({
    required this.title,
    Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navigation(),
      endDrawer: Notifications(),
      appBar: AppBar(
        title: title,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              tooltip: 'Main Menu',
              onPressed: () { Scaffold.of(context).openDrawer(); },
            );
          },
        ),
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
      body: context.watch<ContentDisplay>().child,
    );
  }
}
