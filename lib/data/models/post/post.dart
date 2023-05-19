import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class Posts {
  late String userImage;
  late Post post;
  late PostComment comment;
  late String userImageComment;
  late String nicknameComment;

  Posts({
    required this.userImage,
    required this.post,
    required this.comment,
  });

  factory Posts.fromJson(Map<String, dynamic> json)
  {
    return Posts(userImage: json['userImage'],
        post: Post.fromJson(json['post']),
        comment: PostComment.fromJson(json['comment'],
        ));
  }

}

@freezed
class Post {
  late String id;
  late String userId;
  late String nickname;
  late String date;
  late List<String> image;
  late String description;
  late int numberOfLikes;

  Post({
    required this.id,
    required this.userId,
    required this.nickname,
    required this.date,
    required this.image,
    required this.description,
    required this.numberOfLikes,
  });

  factory Post.fromJson(Map<String, dynamic> json)
  {
    return Post(id: json['id'],
        userId: json['userId'],
        nickname: json['nickname'],
        date: json['date'],
        image: (json['image'] as List).map((e) => e as String).toList(),
        description: json['description'],
        numberOfLikes: json['numberOfLikes']);
  }
}

class PostComment {
  late String id;
  late String userId;

  late String date;
  late String text;

  late String userImage;
  late String nickname;

  PostComment({
    required this.id,
    required this.userId,
    required this.date,
    required this.text,
    required this.userImage,
    required this.nickname,
  });

  factory PostComment.fromJson(Map<String, dynamic> json) {
    return PostComment(
        id: json['id'] as String,
        userId: json['userId']as String,
        date: json['date']as String,
        text: json['text']as String,
        userImage: json['userImage']as String,
        nickname: json['nickname']as String);
  }
}
