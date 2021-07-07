import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:url_launcher/url_launcher.dart';

import '../../TextsConstants.dart';

class ProfilesTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Opacity(
        opacity: 0.25,
        child: Center(
          child: SizedBox(
              height: max(400, MediaQuery.of(context).size.height * 0.75),
              width: MediaQuery.of(context).size.width * 0.9,
              child: Image.asset(
                'images/rightimage.jpg',
                fit: BoxFit.cover,
              )),
        ),
      ),
      ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24.0, bottom: 16.0),
            child: Center(
              child: Text(
                'Coding Profiles',
                style: GoogleFonts.fugazOne(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          profileDescription(
              'images/leetcodetransparent.png',
              'Solved 350+ DSA Problems on LeetCode',
              TextsConstants.leetCodeUrl,
              60,
              120.0),
          SizedBox(
            width: 40,
          ),
          profileDescription(
              'images/codecheftransparent.jpg',
              '4 Star Rating on CodeChef',
              TextsConstants.codechefUrl,
              80.0,
              120.0),
          SizedBox(
            width: 40,
          ),
          profileDescription(
              'images/gfglogo.png',
              'Solved 150+ DSA Problems on GeeksForGeeks',
              TextsConstants.gfgUrl,
              50.0,
              150.0),
          Center(
            child: Text(
              'Social Profiles',
              style: GoogleFonts.fugazOne(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).accentColor),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              profileDescription('images/githublogo.png', '',
                  TextsConstants.githubUrl, 50.0, 60.0),
              profileDescription('images/linkedlogotransparent.png', '',
                  TextsConstants.linkedinUrl, 80.0, 150.0),
            ],
          ),
        ],
      ),
    ]);
  }

  Widget profileDescription(String imageAsset, String description, String url,
      double height, double width) {
    return Column(
      children: [
        Text(
          description,
          style: GoogleFonts.mateSc(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.indigo,
              letterSpacing: 1.0),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 26.0),
          child: SizedBox(
              width: width,
              height: height,
              child: MaterialButton(
                onPressed: () async {
                  if (await canLaunch(url)) {
                    await launch(url);
                  }
                },
                hoverColor: Colors.transparent,
                hoverElevation: 20.0,
                child: Image.asset(
                  imageAsset,
                ),
              )),
        ),
      ],
    );
  }
}
