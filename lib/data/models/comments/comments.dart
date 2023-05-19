import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../post/post.dart';

/*part 'comments.freezed.dart';
part  'comments.g.dart';
*/
@freezed
class Comments{
  late List<PostComment> comments;
  Comments({
    required this.comments,
  });

  factory Comments.fromJson(Map<String, dynamic> json) {
    return Comments(
        comments:
            ((json['comments'] as List<dynamic>)).map((i) => PostComment.fromJson(i)).toList());
  }
}
/*
@freezed
class Comment with _$Comment {
  const factory Comment({
    required String id,
    required String userId,
    required String text,
    required String date,
    required String nickname,
    required String userImage,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      id: json['id'] as String,
      userId: json['userId'] as String,
      text: json['text'] as String,
      date: json['date'] as String,
      nickname: json['nickname'] as String,
      userImage: json['userImage'] as String,
    );
  }
}
*/