//import 'dart:html';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/data/models/feed/feed.dart';
import 'package:untitled1/data/models/likes/likes.dart';
import 'package:untitled1/data/repositories/get/userRepo.dart';
import 'package:untitled1/ui/pages/postPage.dart';
import 'package:untitled1/ui/pages/profilePage.dart';
import 'package:untitled1/globals.dart' as globals;

import '../../data/repositories/get/postsRepo.dart';
import '../../data/repositories/post/postLikes.dart';

class PostUI extends StatefulWidget {
  final FeedPost post;

  const PostUI({Key? key, required this.post}) : super(key: key);

  @override
  _PostUIState createState() => _PostUIState(post: post);

//int currentPageIndex;
}

class _PostUIState extends State<PostUI> {
  final FeedPost post;
  bool isNotLiked=true;//не очень
  _PostUIState({required this.post});

  //var nickname = "mentaldora";
  //var numberOfLikes = 0;

  void _incrementLikes() {
    setState(() {
      if(isNotLiked){
        //LikesRepo.postLikes(PostLike(userId: post.userId,postId: post.idPost));
        isNotLiked = false;
        post.increaseLikes();
      }
      else
      {
        //LikesRepo.postLikes(PostLike(userId: post.userId,postId: post.idPost));
        isNotLiked = true;
        post.reduceLikes();
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return TextButton(
      //move to
        onPressed: () {
          Route postRoute = MaterialPageRoute(
              builder: (context) => OpenedPost(
                    posts: PostsRepo.getPosts(),
                  ));
          Navigator.push(context, postRoute);
        },
        child: Padding(
          padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, height * 22 / 926),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 173 / 428,
                  child: CachedNetworkImage(imageUrl: post.images[0]),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 173 / 428,
                  height: 30,
                  color: const Color.fromRGBO(200, 200, 220, 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Route route = MaterialPageRoute(
                              builder: (context) =>
                                  Profile(user: UserRepo.getUser()));
                          Navigator.push(context, route);
                        },
                        child: Text(
                          post.nickname,
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                              color: globals.secondColor,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: _incrementLikes,
                        child: SizedBox(
                          width: 50.0,
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 10.0),
                              ),
                              SizedBox(
                                height: 18.0,
                                width: 18.0,
                                child: CachedNetworkImage(imageUrl: globals.heart),
                              ),
                              SizedBox(
                                width: 22.0,
                                child: GestureDetector(
                                  onTap: (){

                                  },
                                  child: Text(
                                    post.numberOfLikes > 99 ? '99+' : '${post.numberOfLikes}',
                                    style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                        color: globals.secondColor,
                                        fontSize: 10
                                      ),
                                    ),
                                  ),
                                ),),
                              //),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
