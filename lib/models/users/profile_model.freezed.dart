// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Profile {
  int? get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get managerName => throw _privateConstructorUsedError;
  String get restaurantName => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res, Profile>;
  @useResult
  $Res call(
      {int? id,
      String email,
      String password,
      String managerName,
      String restaurantName,
      String language});
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res, $Val extends Profile>
    implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = null,
    Object? password = null,
    Object? managerName = null,
    Object? restaurantName = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      managerName: null == managerName
          ? _value.managerName
          : managerName // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantName: null == restaurantName
          ? _value.restaurantName
          : restaurantName // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$_ProfileCopyWith(
          _$_Profile value, $Res Function(_$_Profile) then) =
      __$$_ProfileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String email,
      String password,
      String managerName,
      String restaurantName,
      String language});
}

/// @nodoc
class __$$_ProfileCopyWithImpl<$Res>
    extends _$ProfileCopyWithImpl<$Res, _$_Profile>
    implements _$$_ProfileCopyWith<$Res> {
  __$$_ProfileCopyWithImpl(_$_Profile _value, $Res Function(_$_Profile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = null,
    Object? password = null,
    Object? managerName = null,
    Object? restaurantName = null,
    Object? language = null,
  }) {
    return _then(_$_Profile(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      managerName: null == managerName
          ? _value.managerName
          : managerName // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantName: null == restaurantName
          ? _value.restaurantName
          : restaurantName // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Profile implements _Profile {
  _$_Profile(
      {this.id,
      required this.email,
      required this.password,
      required this.managerName,
      required this.restaurantName,
      required this.language});

  @override
  final int? id;
  @override
  final String email;
  @override
  final String password;
  @override
  final String managerName;
  @override
  final String restaurantName;
  @override
  final String language;

  @override
  String toString() {
    return 'Profile(id: $id, email: $email, password: $password, managerName: $managerName, restaurantName: $restaurantName, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Profile &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.managerName, managerName) ||
                other.managerName == managerName) &&
            (identical(other.restaurantName, restaurantName) ||
                other.restaurantName == restaurantName) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, email, password, managerName, restaurantName, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      __$$_ProfileCopyWithImpl<_$_Profile>(this, _$identity);
}

abstract class _Profile implements Profile {
  factory _Profile(
      {final int? id,
      required final String email,
      required final String password,
      required final String managerName,
      required final String restaurantName,
      required final String language}) = _$_Profile;

  @override
  int? get id;
  @override
  String get email;
  @override
  String get password;
  @override
  String get managerName;
  @override
  String get restaurantName;
  @override
  String get language;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      throw _privateConstructorUsedError;
}
