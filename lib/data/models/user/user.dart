//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../feed/feed.dart';

part 'user.freezed.dart';

part 'user.g.dart';

class User {
  late String id;
  late String nickname;
  late Information information;
  late List<Follower> followers;
  late List<Following> followings;
  late List<FeedPost> posts;

  User({
    required this.id,
    required this.nickname,
    required this.information,
    required this.followers,
    required this.followings,
    required this.posts,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    var followersJson = json['followers'] as List;
    List<Follower> followersList =
        followersJson.map((i) => Follower.fromJson(i)).toList();

    var followingsJson = json['followings'] as List;
    List<Following> followingsList =
        followingsJson.map((i) => Following.fromJson(i)).toList();

    var postsJson = json['posts'] as List;
    List<FeedPost> postsList =
        postsJson.map((i) => FeedPost.fromJson(i)).toList();

    return User(
      id: json['id'] as String,
      information: Information.fromJson(json['information']) as Information,
      followers: followersList,
      followings: followingsList,
      posts: postsList,
      nickname: json['nickname'] as String,
    );
  }
}

@freezed
class Information with _$Information {
  const factory Information({
    required String description,
    required String image,
    required String firstName,
    required String secondName,
    required String dateOfBirth,
    required String gender,
  }) = _Information;

  factory Information.fromJson(Map<String, dynamic> json) =>
      _$InformationFromJson(json);
/*{
    return Information(
      firstName: json["information"]['firstName'] as String,
      secondName: json["information"]['secondName'] as String,
      dateOfBirth: json["information"]['dateOfBirth'] as DateTime,
      gender: json["information"]['gender'] as String,
    );
  }*/
}

class Follower {
  late String id;
  late String image;

  Follower({
    required this.id,
    required this.image,
  });

  factory Follower.fromJson(Map<String, dynamic> json) {
    return Follower(
      id: json['id'] as String,
      image: json['image'] as String,
    );
  }
}

class Following {
  late String id;
  late String image;

  Following({
    required this.id,
    required this.image,
  });

  factory Following.fromJson(Map<String, dynamic> json) {
    return Following(id: json['id'] as String, image: json['image'] as String);
  }

/*{
    return Following(
      id: json["followings"]['id'] as String,
      image: json["followings"]['image'] as String,
    );
  }*/
}
