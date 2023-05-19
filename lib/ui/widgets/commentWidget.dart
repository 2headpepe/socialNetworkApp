

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/data/models/post/post.dart';




class CommentWidget extends StatelessWidget {
  PostComment comment;
  CommentWidget({Key? key,required this.comment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        leading: ClipRRect(child: CachedNetworkImage(imageUrl: comment.userImage,fit: BoxFit.fitWidth,height: 47,width: 47,),borderRadius: BorderRadius.circular(47),),
        title: Text(comment.nickname),
        subtitle: Text(comment.text) ,
      ),
    );
  }
}
