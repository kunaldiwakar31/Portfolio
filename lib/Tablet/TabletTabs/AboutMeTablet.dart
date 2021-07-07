import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:url_launcher/url_launcher.dart';

import '../../TextsConstants.dart';

class AboutMeTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
                      child: Text(
                        'Kunal Diwakar',
                        style: GoogleFonts.fugazOne(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).accentColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(children: [
                    Opacity(
                      opacity: 0.25,
                      child: Center(
                        child: SizedBox(
                          height: max(400, MediaQuery.of(context).size.height * 0.5),
                          child: Image.asset(
                            'images/aboutme_bg.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 8, 26, 20),
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                          hintText: TextsConstants.AboutMe,
                          hintStyle: GoogleFonts.mateSc(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: TextsConstants.textColor,
                              letterSpacing: 2.0),
                        ),
                        minLines: 4,
                        maxLines: 20,
                        enabled: false,
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  MaterialButton(
                    minWidth: 50,
                    padding: EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 16.0),
                    onPressed: () async {
                      if (await canLaunch(TextsConstants.url)) {
                        await launch(TextsConstants.url);
                      }
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    elevation: 20,
                    color: Colors.red,
                    child: Text(
                      "My Resume",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
  }
}
