import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class Feed {
  late List<FeedPost> feed;
  Feed({
    required this.feed,
  });

  factory Feed.fromJson(Map<String, dynamic> json) {
    var feedJson = json['feed'] as List;
    List<FeedPost> feedPosts=feedJson.map((e)=>FeedPost.fromJson(e)).toList();
    return Feed(feed: feedPosts);
  }
}

class FeedPost {
  late String idPost;
  late String userId;
  late List<String> images;
  late String nickname;
  late int numberOfLikes;

  FeedPost({
    required this.idPost,
    required this.userId,
    required this.images,
    required this.nickname,
    required this.numberOfLikes,
  });

  @override
  factory FeedPost.fromJson(Map<String, dynamic> json)
  {
    return FeedPost(
      idPost: json['idPost'],
      userId: json['userId'] as String,
      images: (json['images'] as List).map((e) => e as String).toList(),
      nickname: json['nickname'] as String,
      numberOfLikes: json['numberOfLikes'] as int,);
  }
  void increaseLikes() {
    numberOfLikes++;
  }
  void reduceLikes() {
    numberOfLikes--;
  }
}
