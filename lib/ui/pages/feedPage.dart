import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/ui/widgets/postUI.dart';
import 'package:untitled1/globals.dart' as globals;
import 'package:untitled1/ui/pages/profilePage.dart';
import 'package:untitled1/ui/widgets/navigationBar.dart';

import '../../data/models/feed/feed.dart';
import '../../data/repositories/get/feedRepo.dart';

//https://www.vokrug.tv/pic/person/5/0/1/9/501900de698c47670536071a511ef8f9.jpg
//https://i.ytimg.com/vi/95llLnFD6IU/maxresdefault.jpg

class FeedPage extends StatelessWidget {
  Feed feed;
  FeedPage({Key? key,required this.feed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var firstColumn = <Widget>[];
    var secondColumn = <Widget>[];
    //list of posts
    for (var i = 0; i < feed.feed.length; ++i) {
      if (i % 2 == 0) {
        //firstColumn.add(Container(height: 100,width: 100,color: Colors.amber,));
        firstColumn.add(PostUI(post: FeedRepo.getFeed().feed[i],));           // !!!!!! КОСТЫЛЬ !!!!!! УБРАТЬ !!!!!!
      } else {
        //firstColumn.add(Container(height: 100,width: 100,color: Colors.amber,));
        secondColumn.add(PostUI(post: FeedRepo.getFeed().feed[i],));          // !!!!!! КОСТЫЛЬ !!!!!! УБРАТЬ !!!!!!
      }
    }
    return Stack(
      children: [
        SingleChildScrollView(
          child: Container(
            color: globals.mainColor,
            child: Padding(
              padding: const EdgeInsets.only(top: globals.upperLineSize),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: firstColumn,
                  ),
                  Column(
                    children: secondColumn,
                  ),
                ],
              ),
            ),
          ),
        ),
        const NavBar(),
      ],
    );
  }
}
