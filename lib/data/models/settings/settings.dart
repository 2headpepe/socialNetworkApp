import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled1/data/models/user/user.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';


@freezed
class Settings with _$Settings
{
  const factory Settings({
    required String id,
    required String nickname,

    required Information information,
    required String password,
}) = _Settings;

  factory Settings.fromJson(Map<String,dynamic> json) => _$SettingsFromJson(json);
}