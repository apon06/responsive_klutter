import 'package:flutter/material.dart';
import 'package:responsive_klutter/responsive_klutter.dart';


void main() {
  runApp(const Hi());
}

class Hi extends StatefulWidget {
  const Hi({Key? key}) : super(key: key);


  @override
  State<Hi> createState() => _HiState();
}

class _HiState extends State<Hi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResponsiveLayout(
        mobileBody: MobilePage(),
        mobileSize: 400,
        tabletBody: TabletPage(),
        tabletSize: 800,
        desktopBody: DesktopBody(),
      ),
    );
  }
}