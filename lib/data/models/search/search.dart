import 'dart:html';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search.freezed.dart';


@freezed
class Search with _$Search
{
  const factory Search({
    required String id,
    required String userImage,
    required String nickname,

  }) = _Search;

  factory Search.fromJson(Map<String,dynamic> json)
  {
    return Search(
        id: json['id'] as String,
        userImage: json['userImage'] as String,
        nickname: json['nickname'] as String,
    );
  }
}