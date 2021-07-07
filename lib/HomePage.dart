import 'package:flutter/material.dart';
import 'package:portfolio/Desktop/HomePageDesktop.dart';
import 'package:portfolio/Tablet/HomePageTablet.dart';
import 'package:portfolio/CommonFunctions/deviceName.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return getDeviceType(MediaQuery.of(context).size.width) == 'Desktop'
        ? HomePageDesktop()
        : HomePageTablet();
  }
}
