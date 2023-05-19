// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Settings _$$_SettingsFromJson(Map<String, dynamic> json) => _$_Settings(
      id: json['id'] as String,
      nickname: json['nickname'] as String,
      information:
          Information.fromJson(json['information'] as Map<String, dynamic>),
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_SettingsToJson(_$_Settings instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'information': instance.information,
      'password': instance.password,
    };
