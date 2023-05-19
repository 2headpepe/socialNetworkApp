// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Information _$InformationFromJson(Map<String, dynamic> json) {
  return _Information.fromJson(json);
}

/// @nodoc
mixin _$Information {
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get secondName => throw _privateConstructorUsedError;
  String get dateOfBirth => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InformationCopyWith<Information> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InformationCopyWith<$Res> {
  factory $InformationCopyWith(
          Information value, $Res Function(Information) then) =
      _$InformationCopyWithImpl<$Res, Information>;
  @useResult
  $Res call(
      {String description,
      String image,
      String firstName,
      String secondName,
      String dateOfBirth,
      String gender});
}

/// @nodoc
class _$InformationCopyWithImpl<$Res, $Val extends Information>
    implements $InformationCopyWith<$Res> {
  _$InformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? image = null,
    Object? firstName = null,
    Object? secondName = null,
    Object? dateOfBirth = null,
    Object? gender = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      secondName: null == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InformationCopyWith<$Res>
    implements $InformationCopyWith<$Res> {
  factory _$$_InformationCopyWith(
          _$_Information value, $Res Function(_$_Information) then) =
      __$$_InformationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      String image,
      String firstName,
      String secondName,
      String dateOfBirth,
      String gender});
}

/// @nodoc
class __$$_InformationCopyWithImpl<$Res>
    extends _$InformationCopyWithImpl<$Res, _$_Information>
    implements _$$_InformationCopyWith<$Res> {
  __$$_InformationCopyWithImpl(
      _$_Information _value, $Res Function(_$_Information) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? image = null,
    Object? firstName = null,
    Object? secondName = null,
    Object? dateOfBirth = null,
    Object? gender = null,
  }) {
    return _then(_$_Information(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      secondName: null == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Information implements _Information {
  const _$_Information(
      {required this.description,
      required this.image,
      required this.firstName,
      required this.secondName,
      required this.dateOfBirth,
      required this.gender});

  factory _$_Information.fromJson(Map<String, dynamic> json) =>
      _$$_InformationFromJson(json);

  @override
  final String description;
  @override
  final String image;
  @override
  final String firstName;
  @override
  final String secondName;
  @override
  final String dateOfBirth;
  @override
  final String gender;

  @override
  String toString() {
    return 'Information(description: $description, image: $image, firstName: $firstName, secondName: $secondName, dateOfBirth: $dateOfBirth, gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Information &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.secondName, secondName) ||
                other.secondName == secondName) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, image, firstName,
      secondName, dateOfBirth, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InformationCopyWith<_$_Information> get copyWith =>
      __$$_InformationCopyWithImpl<_$_Information>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InformationToJson(
      this,
    );
  }
}

abstract class _Information implements Information {
  const factory _Information(
      {required final String description,
      required final String image,
      required final String firstName,
      required final String secondName,
      required final String dateOfBirth,
      required final String gender}) = _$_Information;

  factory _Information.fromJson(Map<String, dynamic> json) =
      _$_Information.fromJson;

  @override
  String get description;
  @override
  String get image;
  @override
  String get firstName;
  @override
  String get secondName;
  @override
  String get dateOfBirth;
  @override
  String get gender;
  @override
  @JsonKey(ignore: true)
  _$$_InformationCopyWith<_$_Information> get copyWith =>
      throw _privateConstructorUsedError;
}
