import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/ui/widgets/commentWidget.dart';
import 'package:untitled1/globals.dart' as globals;
import '../../data/models/comments/comments.dart';

class CommentsPage extends StatelessWidget {
  Comments comments;

  CommentsPage({Key? key, required this.comments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Material(
      child: ListView(
        children:
        [
          Padding(
            padding: EdgeInsets.only(top: height * 13 / 926),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Comments",
                style: GoogleFonts.lato(
                  fontSize: 20,
                  color: globals.secondColor,
                ),
              ),
            ),
          ),
          for (var comment in comments.comments)
            CommentWidget(comment: comment)
        ],
      ),
    );
  }
}
