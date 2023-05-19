import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'likes.freezed.dart';

@freezed
class Likes with _$Likes
{
  const factory Likes({
    required List<Like> likes,
}) = _Likes;

  factory Likes.fromJson(Map<String,dynamic> json)
  {
    var likesJson = json['likes'] as List;
    List<Like> likesList = likesJson.map((i) => Like.fromJson(json)).toList();
    return Likes(
      likes: likesList,
    );
  }
}
@freezed
class Like with _$Like
{
  const factory Like({
    required String userId,
    required String userImage,
    required String nickname,

    required String id,
}) = _Like;

  factory Like.fromJson(Map<String,dynamic> json)
  {
    return Like(
        userId: json['userId'] as String,
        userImage: json['userImage'] as String,
        nickname: json['nickname'] as String,
        id: json['is'] as String
    );
  }
}