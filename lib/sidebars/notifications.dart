import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  Notifications({Key? key}) : super(key: key);

  List<Map<String, String>> messages = [
    {"index":"1", "status": "INFO", "message": "This is a notification"},
    {"index":"2", "status": "INFO", "message": "This is a second notification"},
    {"index":"3", "status": "INFO", "message": "This is a third notification"},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text("Notification number: " + messages[index]["index"]! + "\n" +
            messages[index]["status"]!),
          subtitle: Text(messages[index]["message"]!)
        );
      },
    );
  }
}

