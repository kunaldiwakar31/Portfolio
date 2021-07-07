import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/TextsConstants.dart';

class ExperienceDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 26.0),
                      child: Text(
                        'Security Analyst Intern \nat Bugsmirror',
                        style: GoogleFonts.fugazOne(
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).accentColor),
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Opacity(
                        opacity: 0.25,
                        child: Center(
                          child: SizedBox(
                            height: max(400,
                                MediaQuery.of(context).size.height * 0.5),
                            child: Image.asset(
                              'images/aboutme_bg.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(30.0, 8, 30, 30),
                            child: TextField(
                              decoration: InputDecoration.collapsed(
                                hintText: TextsConstants.Experience,
                                hintStyle: GoogleFonts.mateSc(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: TextsConstants.textColor,
                                    letterSpacing: 2.0),
                              ),
                              minLines: 5,
                              maxLines: 20,
                              enabled: false,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Opacity(
                opacity: 0.8,
                child: Image.asset(
                  'images/experienceimage.jpg',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
