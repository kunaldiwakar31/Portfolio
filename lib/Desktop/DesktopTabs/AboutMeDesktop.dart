import 'dart:math';
import 'dart:ui' as ui;

import 'package:asset_cache/asset_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/CommonFunctions/Loader.dart';
import 'package:portfolio/TextsConstants.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:url_launcher/url_launcher.dart';

final imageAssets = ImageAssetCache(basePath: 'images/');

class AboutMeDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(26.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TweenAnimationBuilder<double>(
                            tween: Tween<double>(begin: 0, end: 1),
                            duration: Duration(seconds: 1),
                            builder: (BuildContext context, double _val, _) {
                              return Opacity(
                                opacity: _val,
                                child: Padding(
                                  padding: EdgeInsets.only(top: _val * 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 26.0),
                                      child: Text(
                                        'Kunal Diwakar',
                                        style: GoogleFonts.fugazOne(
                                            fontSize: 48,
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context).accentColor),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                        SizedBox(
                          height: 10,
                        ),
                        Stack(children: [
                          FutureBuilder<ui.Image>(
                            future: imageAssets.load('aboutme_bg.png'),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                return Opacity(
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
                                );
                              } else {
                                return Text('');
                              }
                            },
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
                          height: 20,
                        ),
                        MaterialButton(
                          minWidth: 50,
                          padding: EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 20.0),
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
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: FutureBuilder<ui.Image>(
                  future: imageAssets.load('profile_pic.jpg'),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      Future.delayed(const Duration(milliseconds: 3), () {
                      });
                      return Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.height * 0.05),
                          child: Image.asset(
                            'images/profile_pic.jpg',
                          ),
                        ),
                      );
                    } else {
                      return Loader();
                    }
                  },
                ),
              )
            ],
          ),
        ));
  }
}