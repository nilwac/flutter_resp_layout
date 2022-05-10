import 'package:flutter_responsive_layout/responsive/desktopBody.dart';
import 'package:flutter_responsive_layout/responsive/mobileBody.dart';
import 'package:flutter_responsive_layout/responsive/responsive_layout.dart';
import 'package:flutter_responsive_layout/responsive/tabletBody.dart';
import 'package:flutter/material.dart';

class Responsive_choice extends StatefulWidget {

  const Responsive_choice({
    Key? key}) : super(key: key);

  @override
  State<Responsive_choice> createState() => _ResponsiveChoiceState();
}

class _ResponsiveChoiceState extends State<Responsive_choice> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileBody: MyMobileBody(title: Text("Mobile")),
        tabletBody: MyTabletBody(title: Text("Tablet")),
        desktopBody: MyDesktopBody(title: Text("Desktop")),
    );
  }
}

