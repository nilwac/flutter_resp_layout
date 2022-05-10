import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_responsive_layout/pages/page1.dart';

/*
  Pages will be set in /sidebars/navigation.dart
  Listener are in /responsive/###Body.dart
*/
class ContentDisplay with ChangeNotifier, DiagnosticableTreeMixin {
  //First Page in Navigation
  Widget _child = Page1();

  Widget get child => _child;

  void set_child(Widget child) {
    _child = child;
    notifyListeners();
  }
}
