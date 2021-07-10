import 'package:asset_cache/asset_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/TextsConstants.dart';
import 'dart:ui' as ui;

// ignore: import_of_legacy_library_into_null_safe
import 'package:url_launcher/url_launcher.dart';

final imageAssets = ImageAssetCache(basePath: 'images/');

class ProfilesDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      FutureBuilder<ui.Image>(
        future: imageAssets.load('imagebackground.jpg'),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Opacity(
              opacity: 0.2,
              child: Center(
                child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Image.asset(
                      'images/imagebackground.jpg',
                      fit: BoxFit.fill,
                    )),
              ),
            );
          } else {
            return Text('');
          }
        },
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Coding Profiles',
            style: GoogleFonts.fugazOne(
                fontSize: 38,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).accentColor),
          ),
          SizedBox(
            height: 50,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                profileDescription(
                    'images/leetcodetransparent.png',
                    'Solved 350+ DSA Problems on LeetCode',
                    TextsConstants.leetCodeUrl,
                    100.0,
                    150.0),
                SizedBox(
                  width: 50,
                ),
                profileDescription(
                    'images/codecheftransparent.jpg',
                    '4 Star Rating on CodeChef',
                    TextsConstants.codechefUrl,
                    100.0,
                    150.0),
                SizedBox(
                  width: 50,
                ),
                profileDescription(
                    'images/gfglogo.png',
                    'Solved 150+ DSA Problems on GeeksForGeeks',
                    TextsConstants.gfgUrl,
                    100.0,
                    150.0),
              ],
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Text(
            'Social Profiles',
            style: GoogleFonts.fugazOne(
                fontSize: 38,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).accentColor),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              profileDescription('images/githublogo.png', '',
                  TextsConstants.githubUrl, 100.0, 60.0),
              profileDescription('images/linkedlogotransparent.png', '',
                  TextsConstants.linkedinUrl, 100.0, 150.0),
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
        SizedBox(
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
      ],
    );
  }
}
