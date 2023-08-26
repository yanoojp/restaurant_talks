// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guest_number_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GuestNumberState {
  int get guestNumber => throw _privateConstructorUsedError;
  TextEditingController get guestNumberController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GuestNumberStateCopyWith<GuestNumberState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestNumberStateCopyWith<$Res> {
  factory $GuestNumberStateCopyWith(
          GuestNumberState value, $Res Function(GuestNumberState) then) =
      _$GuestNumberStateCopyWithImpl<$Res, GuestNumberState>;
  @useResult
  $Res call({int guestNumber, TextEditingController guestNumberController});
}

/// @nodoc
class _$GuestNumberStateCopyWithImpl<$Res, $Val extends GuestNumberState>
    implements $GuestNumberStateCopyWith<$Res> {
  _$GuestNumberStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guestNumber = null,
    Object? guestNumberController = null,
  }) {
    return _then(_value.copyWith(
      guestNumber: null == guestNumber
          ? _value.guestNumber
          : guestNumber // ignore: cast_nullable_to_non_nullable
              as int,
      guestNumberController: null == guestNumberController
          ? _value.guestNumberController
          : guestNumberController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GuestNumberStateCopyWith<$Res>
    implements $GuestNumberStateCopyWith<$Res> {
  factory _$$_GuestNumberStateCopyWith(
          _$_GuestNumberState value, $Res Function(_$_GuestNumberState) then) =
      __$$_GuestNumberStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int guestNumber, TextEditingController guestNumberController});
}

/// @nodoc
class __$$_GuestNumberStateCopyWithImpl<$Res>
    extends _$GuestNumberStateCopyWithImpl<$Res, _$_GuestNumberState>
    implements _$$_GuestNumberStateCopyWith<$Res> {
  __$$_GuestNumberStateCopyWithImpl(
      _$_GuestNumberState _value, $Res Function(_$_GuestNumberState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guestNumber = null,
    Object? guestNumberController = null,
  }) {
    return _then(_$_GuestNumberState(
      guestNumber: null == guestNumber
          ? _value.guestNumber
          : guestNumber // ignore: cast_nullable_to_non_nullable
              as int,
      guestNumberController: null == guestNumberController
          ? _value.guestNumberController
          : guestNumberController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$_GuestNumberState implements _GuestNumberState {
  const _$_GuestNumberState(
      {required this.guestNumber, required this.guestNumberController});

  @override
  final int guestNumber;
  @override
  final TextEditingController guestNumberController;

  @override
  String toString() {
    return 'GuestNumberState(guestNumber: $guestNumber, guestNumberController: $guestNumberController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GuestNumberState &&
            (identical(other.guestNumber, guestNumber) ||
                other.guestNumber == guestNumber) &&
            (identical(other.guestNumberController, guestNumberController) ||
                other.guestNumberController == guestNumberController));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, guestNumber, guestNumberController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GuestNumberStateCopyWith<_$_GuestNumberState> get copyWith =>
      __$$_GuestNumberStateCopyWithImpl<_$_GuestNumberState>(this, _$identity);
}

abstract class _GuestNumberState implements GuestNumberState {
  const factory _GuestNumberState(
          {required final int guestNumber,
          required final TextEditingController guestNumberController}) =
      _$_GuestNumberState;

  @override
  int get guestNumber;
  @override
  TextEditingController get guestNumberController;
  @override
  @JsonKey(ignore: true)
  _$$_GuestNumberStateCopyWith<_$_GuestNumberState> get copyWith =>
      throw _privateConstructorUsedError;
}
