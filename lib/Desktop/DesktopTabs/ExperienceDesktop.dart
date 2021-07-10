import 'dart:math';
import 'dart:ui' as ui;
import 'package:asset_cache/asset_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/CommonFunctions/Loader.dart';
import 'package:portfolio/TextsConstants.dart';

final imageAssets = ImageAssetCache(basePath: 'images/');

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
                  TweenAnimationBuilder(
                    duration: Duration(seconds: 1),
                    tween: Tween<double>(begin: 0, end: 1),
                    builder: (BuildContext context, double _val, _) {
                      return Opacity(
                        opacity: _val,
                        child: Padding(
                          padding: EdgeInsets.only(top: _val * 20),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 26.0),
                              child: Text(
                                'Security Analyst Intern \nat Bugsmirror',
                                style: GoogleFonts.fugazOne(
                                    fontSize: 38,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).accentColor),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  Stack(
                    children: [
                      FutureBuilder<ui.Image>(
                        future: imageAssets.load('aboutme_bg.png'),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Opacity(
                              opacity: 0.25,
                              child: Center(
                                child: SizedBox(
                                  height: max(
                                      400, MediaQuery.of(context).size.height * 0.5),
                                  child: Image.asset(
                                    'images/aboutme_bg.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
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
            ),
            Expanded(
              flex: 4,
              child: FutureBuilder<ui.Image>(
                future: imageAssets.load('experienceimage.jpg'),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    Future.delayed(const Duration(milliseconds: 3), () {
                    });
                    return Opacity(
                      opacity: 0.8,
                      child: Image.asset(
                        'images/experienceimage.jpg',
                      ),
                    );
                  } else {
                    return Loader();
                  }
                },
              )
            )
          ],
        ),
      ),
    );
  }
}
