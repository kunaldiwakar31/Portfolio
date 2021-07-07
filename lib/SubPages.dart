import 'package:flutter/material.dart';
import 'package:portfolio/Tablet/TabletTabs/AboutMeTablet.dart';
import 'package:portfolio/Tablet/TabletTabs/ExperienceTablet.dart';
import 'package:portfolio/Tablet/TabletTabs/ProfilesTablet.dart';
import 'package:portfolio/Tablet/TabletTabs/ProjectsTablet.dart';

class SubPage {
  final IconData icon;
  final String title;
  final Widget Function(BuildContext) builder;

  SubPage(this.title, this.icon, this.builder);
}

final appSubPages = [
  SubPage("AboutMe", Icons.person, (context) => AboutMeTablet()),
  SubPage("Experience", Icons.work, (context) => ExperienceTablet()),
  SubPage("Projects", Icons.assignment_sharp, (context) => ProjectsTablet()),
  SubPage("Profiles", Icons.person_pin_outlined, (context) => ProfilesTablet()),
];