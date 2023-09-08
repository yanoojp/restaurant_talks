// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomisedUser {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomisedUserCopyWith<CustomisedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomisedUserCopyWith<$Res> {
  factory $CustomisedUserCopyWith(
          CustomisedUser value, $Res Function(CustomisedUser) then) =
      _$CustomisedUserCopyWithImpl<$Res, CustomisedUser>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$CustomisedUserCopyWithImpl<$Res, $Val extends CustomisedUser>
    implements $CustomisedUserCopyWith<$Res> {
  _$CustomisedUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomisedUserCopyWith<$Res>
    implements $CustomisedUserCopyWith<$Res> {
  factory _$$_CustomisedUserCopyWith(
          _$_CustomisedUser value, $Res Function(_$_CustomisedUser) then) =
      __$$_CustomisedUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_CustomisedUserCopyWithImpl<$Res>
    extends _$CustomisedUserCopyWithImpl<$Res, _$_CustomisedUser>
    implements _$$_CustomisedUserCopyWith<$Res> {
  __$$_CustomisedUserCopyWithImpl(
      _$_CustomisedUser _value, $Res Function(_$_CustomisedUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_CustomisedUser(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CustomisedUser implements _CustomisedUser {
  _$_CustomisedUser({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'CustomisedUser(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomisedUser &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomisedUserCopyWith<_$_CustomisedUser> get copyWith =>
      __$$_CustomisedUserCopyWithImpl<_$_CustomisedUser>(this, _$identity);
}

abstract class _CustomisedUser implements CustomisedUser {
  factory _CustomisedUser(
      {required final String email,
      required final String password}) = _$_CustomisedUser;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_CustomisedUserCopyWith<_$_CustomisedUser> get copyWith =>
      throw _privateConstructorUsedError;
}
