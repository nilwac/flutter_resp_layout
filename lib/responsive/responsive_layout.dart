import 'package:flutter/material.dart';

const mobileWidth = 600;
const tabletWidth = 1000;

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabletBody;
  final Widget desktopBody;

  // Constructor
  ResponsiveLayout({
    required this.mobileBody,
    required this.tabletBody,
    required this.desktopBody
    });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          if (constraints.maxWidth <= mobileWidth) {
            return mobileBody;
          }
          else if (constraints.maxWidth > mobileWidth && constraints.maxWidth < tabletWidth){
            return tabletBody;
          }
          else {
            return desktopBody;
          }
        }
    );
  }
}

