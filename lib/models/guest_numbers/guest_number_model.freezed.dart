// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guest_number_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GuestNumber {
  String get userId => throw _privateConstructorUsedError;
  int get guestNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GuestNumberCopyWith<GuestNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestNumberCopyWith<$Res> {
  factory $GuestNumberCopyWith(
          GuestNumber value, $Res Function(GuestNumber) then) =
      _$GuestNumberCopyWithImpl<$Res, GuestNumber>;
  @useResult
  $Res call({String userId, int guestNumber});
}

/// @nodoc
class _$GuestNumberCopyWithImpl<$Res, $Val extends GuestNumber>
    implements $GuestNumberCopyWith<$Res> {
  _$GuestNumberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? guestNumber = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      guestNumber: null == guestNumber
          ? _value.guestNumber
          : guestNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GuestNumberCopyWith<$Res>
    implements $GuestNumberCopyWith<$Res> {
  factory _$$_GuestNumberCopyWith(
          _$_GuestNumber value, $Res Function(_$_GuestNumber) then) =
      __$$_GuestNumberCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, int guestNumber});
}

/// @nodoc
class __$$_GuestNumberCopyWithImpl<$Res>
    extends _$GuestNumberCopyWithImpl<$Res, _$_GuestNumber>
    implements _$$_GuestNumberCopyWith<$Res> {
  __$$_GuestNumberCopyWithImpl(
      _$_GuestNumber _value, $Res Function(_$_GuestNumber) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? guestNumber = null,
  }) {
    return _then(_$_GuestNumber(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      guestNumber: null == guestNumber
          ? _value.guestNumber
          : guestNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GuestNumber implements _GuestNumber {
  const _$_GuestNumber({required this.userId, required this.guestNumber});

  @override
  final String userId;
  @override
  final int guestNumber;

  @override
  String toString() {
    return 'GuestNumber(userId: $userId, guestNumber: $guestNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GuestNumber &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.guestNumber, guestNumber) ||
                other.guestNumber == guestNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, guestNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GuestNumberCopyWith<_$_GuestNumber> get copyWith =>
      __$$_GuestNumberCopyWithImpl<_$_GuestNumber>(this, _$identity);
}

abstract class _GuestNumber implements GuestNumber {
  const factory _GuestNumber(
      {required final String userId,
      required final int guestNumber}) = _$_GuestNumber;

  @override
  String get userId;
  @override
  int get guestNumber;
  @override
  @JsonKey(ignore: true)
  _$$_GuestNumberCopyWith<_$_GuestNumber> get copyWith =>
      throw _privateConstructorUsedError;
}
