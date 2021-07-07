import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:url_launcher/url_launcher.dart';

import '../../TextsConstants.dart';

class ProjectsTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          projectDetails(
              context,
              'Chatting & Calling App',
              TextsConstants.ProjectChattingApp,
              TextsConstants.ChattingAppTechnologies,
              TextsConstants.ChattingAppGitHubLink),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                'images/chatting_app.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Stack(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(top: 80),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Opacity(
                    opacity: 0.25,
                    child: Image.asset(
                      'images/donorpatientImage.jpg',
                    ),
                  ),
                ),
              ),
              projectDetails(
                  context,
                  'Donor & Patient App',
                  TextsConstants.ProjectDonorPatientApp,
                  TextsConstants.DonorPatientAppTechnologies,
                  TextsConstants.DonorPatientAppGitHubLink),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Stack(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(top: 80),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Opacity(
                    opacity: 0.3,
                    child: Image.asset(
                      'images/sosimage.jpg',
                    ),
                  ),
                ),
              ),
              projectDetails(
                  context,
                  'SOS (Save Our Soul) App',
                  TextsConstants.ProjectSOSApp,
                  TextsConstants.SOSAppTechnologies,
                  TextsConstants.SOSAppGitHubLink),
          ],),
        ],
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
            padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 20),
            child: Text(
              projectName,
              style: GoogleFonts.fugazOne(
                  fontSize: 30,
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 26.0, vertical: 8.0),
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
            padding:
                const EdgeInsets.symmetric(horizontal: 26.0, vertical: 16.0),
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
