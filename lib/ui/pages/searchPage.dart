import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/globals.dart' as globals;
import 'package:untitled1/ui/widgets/navigationBar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Material(
      child: Stack(
        children: [
          Container(
            color: globals.mainColor,
            height: height,
          ),
          Padding(
            padding: EdgeInsets.only(
                top: height * 16 / globals.height,
                left: width * 10 / globals.width),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                  color: globals.theLightestColor,
                  height: height * 48 / globals.height,
                  width: width * 408 / globals.width,
                  child: Row(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(left: width * 14 / globals.width),
                        child: Icon(Icons.search),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width * 6 / globals.width),
                        child: Text(
                          "Search for something",
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            color: globals.lightBlack,
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          const NavBar(),
        ],
      ),
    );
  }
}
