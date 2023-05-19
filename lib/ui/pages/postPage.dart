import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/globals.dart' as globals;
import 'package:untitled1/ui/pages/profilePage.dart';
import 'package:untitled1/ui/widgets/circleImage.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/ui/widgets/commentWidget.dart';

import '../../data/models/post/post.dart';
import '../../data/repositories/get/commentsRepo.dart';
import '../../data/repositories/get/userRepo.dart';
import 'commentsPage.dart';

class OpenedPost extends StatelessWidget {
  Posts posts;

  OpenedPost({Key? key, required this.posts}) : super(key: key);

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    //final String nickname = "mentaldora";

    return Material(
      child: SingleChildScrollView(
        child: Container(
          color: globals.mainColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Arrow for backing to prev page
              Padding(
                padding: EdgeInsets.only(
                    top: height * 14 / globals.height, left: (width / 2 - 10)),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.keyboard_arrow_down_outlined,
                  ),
                ),
              ),
              //Main Image
              Padding(
                padding: EdgeInsets.only(
                    top: height * 14 / globals.height,
                    left: width * 34 / globals.width),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: CachedNetworkImage(
                    imageUrl: posts.post.image[0],
                    width: width * 370 / globals.width,
                  ),
                ),
              ),
              // Avatar + nickname
              Padding(
                padding: EdgeInsets.only(
                    top: height * 33 / globals.height,
                    left: width * 34 / globals.width),
                child: TextButton(
                  onPressed: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => Profile(
                              user: UserRepo.getUser(),
                            ));
                    Navigator.push(context, route);
                  },
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(width * 54 / globals.width),
                        child: CachedNetworkImage(
                            height: width * 54 / globals.width,
                            width: width * 54 / globals.width,
                            fit: BoxFit.fitHeight,
                            imageUrl: posts.userImage),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: width * 23 / globals.width),
                        child: Text(
                          posts.post.nickname,
                          style: GoogleFonts.lato(
                            fontSize: 24,
                            color: globals.secondColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //User Information
              Padding(
                padding: EdgeInsets.only(
                    top: height * 24 / globals.height,
                    left: width * 34 / globals.width),
                child: Text(
                  "Description",
                  style: GoogleFonts.lato(
                    color: globals.secondColor,
                    fontSize: 20,
                  ),
                ),
              ),
              //See more
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
                  width: width * 360 / globals.width,
                  height: 1.0,
                ),
              ),
              //Comments
              Padding(
                padding: EdgeInsets.only(
                    top: height * 93 / globals.height,
                    left: width * 34 / globals.width),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    height: 300,
                    width: width * 360 / globals.width,
                    color: globals.thirdColor,
                    child:
                    GestureDetector(
                      onTap: (){
                        Route route = MaterialPageRoute(
                            builder: (context) =>
                                CommentsPage(comments: CommentsRepo.getComments(),));
                        Navigator.push(context, route);
                      },
                      child: CommentWidget(comment: posts.comment,)
                      ),
                  ),),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
