import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../TextsConstants.dart';

class ExperienceTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 26.0, vertical: 20),
                child: Text(
                  'Security Analyst Intern \nat Bugsmirror',
                  style: GoogleFonts.fugazOne(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).accentColor),
                ),
              ),
            ),
            Stack(
              children: [
                Opacity(
                  opacity: 0.35,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height:
                          max(450, MediaQuery.of(context).size.height * 0.7),
                      child: Image.asset(
                        'images/experienceimage.jpg',
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
                      padding: const EdgeInsets.fromLTRB(30.0, 8, 30, 30),
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
      ],
    );
  }
}
