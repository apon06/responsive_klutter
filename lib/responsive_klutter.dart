library responsive_klutter;

import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final int mobileSize;
  final Widget tabletBody;
  final int tabletSize;
  final Widget desktopBody;

  const ResponsiveLayout({
    Key? key,
    required this.mobileBody,
    required this.mobileSize,
    required this.tabletBody,
    required this.tabletSize,
    required this.desktopBody,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constactor) {
      if (constactor.maxWidth < mobileSize) {
        return mobileBody;
      }
      if (constactor.maxWidth < tabletSize) {
        return tabletBody;
      } else {
        return desktopBody;
      }
    });
  }
}
