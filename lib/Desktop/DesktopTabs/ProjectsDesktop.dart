import 'package:asset_cache/asset_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/CommonFunctions/Loader.dart';
import 'package:portfolio/TextsConstants.dart';
import 'dart:ui' as ui;

// ignore: import_of_legacy_library_into_null_safe
import 'package:url_launcher/url_launcher.dart';

final imageAssets = ImageAssetCache(basePath: 'images/');

class ProjectsDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Row(
            children: [
              Expanded(
                flex: 5,
                child: projectDetails(
                    context,
                    'Chatting & Calling App',
                    TextsConstants.ProjectChattingApp,
                    TextsConstants.ChattingAppTechnologies,
                    TextsConstants.ChattingAppGitHubLink),
              ),
              Expanded(
                flex: 4,
                child: FutureBuilder<ui.Image>(
                  future: imageAssets.load('chatting_app.jpg'),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      Future.delayed(const Duration(milliseconds: 3), () {
                      });
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            'images/chatting_app.jpg',
                          ),
                        ),
                      );
                    } else {
                      return Loader();
                    }
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            children: [
              Expanded(
                flex: 4,
                child: FutureBuilder<ui.Image>(
                  future: imageAssets.load('donorpatientImage.jpg'),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'images/donorpatientImage.jpg',
                          ),
                        ),
                      );
                    } else {
                      return Loader();
                    }
                  },
                ),
              ),
              Expanded(
                flex: 5,
                child: projectDetails(
                    context,
                    'Donor & Patient App',
                    TextsConstants.ProjectDonorPatientApp,
                    TextsConstants.DonorPatientAppTechnologies,
                    TextsConstants.DonorPatientAppGitHubLink),
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: projectDetails(
                    context,
                    'SOS (Save Our Soul) App',
                    TextsConstants.ProjectSOSApp,
                    TextsConstants.SOSAppTechnologies,
                    TextsConstants.SOSAppGitHubLink),
              ),
              Expanded(
                flex: 4,
                child: FutureBuilder<ui.Image>(
                  future: imageAssets.load('sosimage.jpg'),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'images/sosimage.jpg',
                          ),
                        ),
                      );
                    } else {
                      return Loader();
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget projectDetails(BuildContext context, String projectName,
      String projectDescription, String technologiesUsed, String url) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26.0),
            child: Text(
              projectName,
              style: GoogleFonts.fugazOne(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).accentColor),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 26.0, vertical: 8.0),
            child: Text(
              'Description',
              style: GoogleFonts.mateSc(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                  letterSpacing: 2.0),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
          child: TextField(
            decoration: InputDecoration.collapsed(
              hintText: projectDescription,
              hintStyle: GoogleFonts.mateSc(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: TextsConstants.textColor,
                  letterSpacing: 2.0),
              fillColor: Colors.transparent,
            ),
            minLines: 4,
            maxLines: 20,
            enabled: false,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 26.0, vertical: 8.0),
            child: Text(
              'Technologies Used',
              style: GoogleFonts.mateSc(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  letterSpacing: 2.0),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
          child: TextField(
            decoration: InputDecoration.collapsed(
              hintText: technologiesUsed,
              hintStyle: GoogleFonts.mateSc(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                  letterSpacing: 2.0),
              fillColor: Colors.transparent,
            ),
            minLines: 1,
            maxLines: 2,
            enabled: false,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 8.0),
              child: Text(
                'Github Link',
                style: GoogleFonts.mateSc(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    letterSpacing: 2.0),
              ),
            )),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 2.0),
            child: TextButton(
              onPressed: () async {
                if (await canLaunch(url)) {
                  await launch(url);
                }
              },
              child: Text(url),
            ),
          ),
        )
      ],
    );
  }
}
