import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;

@freezed
class PostLike {
  late String userId;
  late String postId;

  PostLike({
    required this.userId,
    required this.postId,
  });
}

class LikesRepo {
  static Future<void> postLikes(PostLike like) async {
    var response = await http.post(
        Uri.parse('https://osetinogram/newLike'),
        body: {'userId': like.userId, 'postId': like.postId});
  }
}
