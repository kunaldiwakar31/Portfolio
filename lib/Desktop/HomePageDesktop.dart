import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../BackgroundPaint.dart';
import 'DesktopTabs/AboutMeDesktop.dart';
import 'DesktopTabs/ExperienceDesktop.dart';
import 'DesktopTabs/ProfilesDesktop.dart';
import 'DesktopTabs/ProjectsDesktop.dart';

class HomePageDesktop extends StatelessWidget {
  final List<String> categories = [
    "About Me",
    "Experience",
    "Projects",
    "Profiles"
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: CustomPaint(
          painter: BackGroundPainter(context: context),
        ),
      ),
      Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.95,
          width: MediaQuery.of(context).size.width * 0.92,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Card(
            elevation: 20,
            color: Colors.white,
            shadowColor: Colors.black,
            child: ClipPath(
              child: Container(
                  child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: new DefaultTabController(
                      length: 4,
                      child: getTabBar(context),
                    ),
                  ),
                ],
              )),
              clipper: ShapeBorderClipper(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
              ),
            ),
          ),
        ),
      )
    ]);
  }

  Widget getTabBar(BuildContext context) {
    return Scaffold(
      appBar: new PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: new Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              if (MediaQuery.of(context).size.width > 1400)
                SizedBox(width: MediaQuery.of(context).size.width * 0.5)
              else if (MediaQuery.of(context).size.width > 1250)
                SizedBox(width: MediaQuery.of(context).size.width * 0.4)
              else
                SizedBox(width: MediaQuery.of(context).size.width * 0.33),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBar(
                    tabs: List<Widget>.generate(categories.length, (int index) {
                      return new Tab(
                          child: Container(
                        width:
                            max(MediaQuery.of(context).size.width * 0.14, 60.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            categories[index],
                            style: GoogleFonts.mateSc(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).accentColor),
                          ),
                        ),
                      ));
                    }),
                    unselectedLabelColor: Theme.of(context).primaryColor,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.indigoAccent, width: 2),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: new TabBarView(children: [
        AboutMeDesktop(),
        ExperienceDesktop(),
        ProjectsDesktop(),
        ProfilesDesktop()
      ]),
    );
  }
}
