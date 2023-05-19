import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/data/models/user/user.dart';
import 'package:untitled1/data/repositories/get/commentsRepo.dart';
import 'package:untitled1/ui/widgets/circleImage.dart';
import 'package:untitled1/ui/widgets/postUI.dart';
import 'package:untitled1/globals.dart' as globals;

import '../../data/repositories/get/feedRepo.dart';
import '../widgets/navigationBar.dart';
import 'commentsPage.dart';

class Profile extends StatelessWidget {
  User user;

  Profile({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    var followers = <Widget>[];
    var followings = <Widget>[];
    var posts = <Widget>[];
    for (int i = 0; i < user.followers.length; ++i) {
      followers.add(
        ClipRRect(borderRadius: BorderRadius.circular(width / 8),child: CachedNetworkImage(height: width/8, width: width/8, imageUrl: user.followers[i].image))
      );
    }
    for (int i = 0; i < user.followings.length; ++i) {
      followings.add(
        ClipRRect(
          borderRadius: BorderRadius.circular(width / 8),
          child: CachedNetworkImage(
            imageUrl: user.followings[i].image,
            fit: BoxFit.fitWidth,
            height: width / 8,
            width: width / 8,
          ),
        ),
      );
    }
    for (int i = 0; i < user.posts.length; ++i) {
      posts.add(PostUI(
        post: FeedRepo.getFeed().feed[i],                         // !!!!!! КОСТЫЛЬ !!!!!! УБРАТЬ !!!!!!
      ));
    }

    return Material(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: globals.upperLineSize),
              child: Container(
                color: globals.mainColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: height * 42 / globals.height,
                          left: width * 34 / globals.width),
                      //avatar+nickname
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // avatar
                          ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  width * 100 / globals.width),
                              child: CachedNetworkImage(
                                imageUrl: user.information.image,
                                fit: BoxFit.fitWidth,
                                height: width * 100 / globals.width,
                                width: width * 100 / globals.width,
                              )),
                          //nickname
                          Padding(
                            padding:
                                EdgeInsets.only(left: width * 45 / globals.width),
                            child: Column(
                              children: [
                                Text(
                                  user.nickname,
                                  style: GoogleFonts.lato(
                                    color: globals.secondColor,
                                    fontSize: 32,
                                  ),
                                ),
                                //description
                                Text(
                                  user.information.description,
                                  style: GoogleFonts.lato(
                                    color: globals.secondColor,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: height * 24 / globals.height,
                          left: width * 34 / globals.width),
                      child: Text(
                        "User information.",
                        style: GoogleFonts.lato(
                          color: globals.secondColor,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: height * 30 / globals.height,
                          left: width * 34 / globals.width),
                      child: Text(
                          'See more...',
                          style: GoogleFonts.lato(
                            color: globals.secondColor,
                            fontSize: 12,
                          ),
                        ),
                      ),
                                      //Underline
                    Padding(
                      padding: EdgeInsets.only(
                          top: height * 12 / globals.height,
                          left: width * 34 / globals.width),
                      child: Container(
                        color: globals.secondColor,
                        width: width,
                        height: 1.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: height * 40 / globals.height,
                          left: width * 34 / globals.width),
                      child: Text(
                        'Your followers:',
                        style: GoogleFonts.lato(
                          color: globals.secondColor,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: height * 8 / globals.height,
                          left: width * 34 / globals.width,
                          right: width * 34 / globals.width
                      ),
                      child: Container(
                        width: width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: followers,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: height * 20 / globals.height,
                          left: width * 34 / globals.width),
                      child: Text(
                        'Your followings:',
                        style: GoogleFonts.lato(
                          color: globals.secondColor,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: height * 8 / globals.height,
                          left: width * 34 / globals.width,
                          right: width * 34 / globals.width),
                      child: Container(
                        width: width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: followings,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: height * 40 / globals.height,
                          left: width * 34 / globals.width),
                      child: Text(
                        'Your posts',
                        style: GoogleFonts.lato(
                          color: globals.secondColor,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: height * 8 / globals.height,
                          left: width * 17 / globals.width,
                          right: width * 17 / globals.width),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: posts,
                          ),
                          Column(
                              children: posts,

                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const NavBar(),
        ],
      ),
    );
  }
}
