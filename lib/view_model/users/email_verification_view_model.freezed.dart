// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_verification_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmailVerificationState {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailVerificationStateCopyWith<EmailVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailVerificationStateCopyWith<$Res> {
  factory $EmailVerificationStateCopyWith(EmailVerificationState value,
          $Res Function(EmailVerificationState) then) =
      _$EmailVerificationStateCopyWithImpl<$Res, EmailVerificationState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$EmailVerificationStateCopyWithImpl<$Res,
        $Val extends EmailVerificationState>
    implements $EmailVerificationStateCopyWith<$Res> {
  _$EmailVerificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmailVerificationStateCopyWith<$Res>
    implements $EmailVerificationStateCopyWith<$Res> {
  factory _$$_EmailVerificationStateCopyWith(_$_EmailVerificationState value,
          $Res Function(_$_EmailVerificationState) then) =
      __$$_EmailVerificationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_EmailVerificationStateCopyWithImpl<$Res>
    extends _$EmailVerificationStateCopyWithImpl<$Res,
        _$_EmailVerificationState>
    implements _$$_EmailVerificationStateCopyWith<$Res> {
  __$$_EmailVerificationStateCopyWithImpl(_$_EmailVerificationState _value,
      $Res Function(_$_EmailVerificationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$_EmailVerificationState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EmailVerificationState implements _EmailVerificationState {
  const _$_EmailVerificationState({required this.isLoading});

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'EmailVerificationState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailVerificationState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailVerificationStateCopyWith<_$_EmailVerificationState> get copyWith =>
      __$$_EmailVerificationStateCopyWithImpl<_$_EmailVerificationState>(
          this, _$identity);
}

abstract class _EmailVerificationState implements EmailVerificationState {
  const factory _EmailVerificationState({required final bool isLoading}) =
      _$_EmailVerificationState;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_EmailVerificationStateCopyWith<_$_EmailVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
