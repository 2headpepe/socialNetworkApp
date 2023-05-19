// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Information _$$_InformationFromJson(Map<String, dynamic> json) =>
    _$_Information(
      description: json['description'] as String,
      image: json['image'] as String,
      firstName: json['firstName'] as String,
      secondName: json['secondName'] as String,
      dateOfBirth: json['dateOfBirth'] as String,
      gender: json['gender'] as String,
    );

Map<String, dynamic> _$$_InformationToJson(_$_Information instance) =>
    <String, dynamic>{
      'description': instance.description,
      'image': instance.image,
      'firstName': instance.firstName,
      'secondName': instance.secondName,
      'dateOfBirth': instance.dateOfBirth,
      'gender': instance.gender,
    };
