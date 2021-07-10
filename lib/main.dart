// @dart=2.9
import 'package:asset_cache/asset_cache.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/HomePage.dart';
import 'package:portfolio/Tablet/TabletTabs/AboutMeTablet.dart';
import 'package:portfolio/CommonFunctions/deviceName.dart';

void main() {
  runApp(MyPortFolio());
}

class MyPortFolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(
        primaryColor: Colors.deepPurpleAccent[100],
        accentColor: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: HomePage(),
    );
  }
}
