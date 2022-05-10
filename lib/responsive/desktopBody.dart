import 'package:flutter/material.dart';
import 'package:flutter_responsive_layout/sidebars/navigation.dart';
import 'package:flutter_responsive_layout/sidebars/notifications.dart';
import 'package:provider/provider.dart';
import 'package:flutter_responsive_layout/providers.dart';

class MyDesktopBody extends StatelessWidget {
  final Widget  title;

  MyDesktopBody({
    required this.title,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title,
      ),
      body: Row(
        children: [
          SizedBox(
              width: 200,
              child: Navigation()),
          Expanded(
            child: context.watch<ContentDisplay>().child,
          ),
          SizedBox(
              width: 200,
              child: Notifications()),
        ],
      ),
    );
  }
}
