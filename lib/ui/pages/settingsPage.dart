import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/globals.dart' as globals;

import '../../data/models/settings/settings.dart';
import '../widgets/navigationBar.dart';

class SettingsPage extends StatelessWidget {
  Settings settings;
  SettingsPage({Key? key,required this.settings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Material(
      child: Stack(
        children: [
          Container(
            color: globals.mainColor,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: height * 13 / 926),
                  child: Text(
                    "Settings",
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      color: globals.secondColor,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 28 / 926),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(width * 116 / 428),
                    child: CachedNetworkImage(
                      imageUrl: settings.information.image,
                      fit: BoxFit.fitHeight,
                      height: width * 116 / 428,
                      width: width * 116 / 428,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: height * 61 / 926, left: width * 39 / 428),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Name:",
                            style: GoogleFonts.lato(
                              color: globals.secondColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: height * 8 / 926),
                            child: Text(
                              settings.nickname,
                              style: GoogleFonts.lato(
                                color: globals.secondColor,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_outlined,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 12 / 926),
                  child: Container(
                    height: 1,
                    width: width * 362 / 428,
                    color: globals.secondColor,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: height * 17 / 926, left: width * 39 / 428),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Description:",
                            style: GoogleFonts.lato(
                              color: globals.secondColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: height * 8 / 926),
                            child: Text(
                              settings.information.description,
                              style: GoogleFonts.lato(
                                color: globals.secondColor,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_outlined,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 12 / 926),
                  child: Container(
                    height: 1,
                    width: width * 362 / 428,
                    color: globals.secondColor,
                  ),
                ),
              ],
            ),
          ),
          const NavBar(),
        ],
      ),
    );
  }
}
