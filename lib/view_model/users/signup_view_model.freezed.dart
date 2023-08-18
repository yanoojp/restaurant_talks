// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignupState {
  bool get isProcessing => throw _privateConstructorUsedError;
  Signup get signupRequest => throw _privateConstructorUsedError;
  TextEditingController get emailController =>
      throw _privateConstructorUsedError;
  TextEditingController get passwordController =>
      throw _privateConstructorUsedError;
  TextEditingController get managerNameController =>
      throw _privateConstructorUsedError;
  TextEditingController get restaurantNameController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupStateCopyWith<SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res, SignupState>;
  @useResult
  $Res call(
      {bool isProcessing,
      Signup signupRequest,
      TextEditingController emailController,
      TextEditingController passwordController,
      TextEditingController managerNameController,
      TextEditingController restaurantNameController});

  $SignupCopyWith<$Res> get signupRequest;
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res, $Val extends SignupState>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isProcessing = null,
    Object? signupRequest = null,
    Object? emailController = null,
    Object? passwordController = null,
    Object? managerNameController = null,
    Object? restaurantNameController = null,
  }) {
    return _then(_value.copyWith(
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      signupRequest: null == signupRequest
          ? _value.signupRequest
          : signupRequest // ignore: cast_nullable_to_non_nullable
              as Signup,
      emailController: null == emailController
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: null == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      managerNameController: null == managerNameController
          ? _value.managerNameController
          : managerNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      restaurantNameController: null == restaurantNameController
          ? _value.restaurantNameController
          : restaurantNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SignupCopyWith<$Res> get signupRequest {
    return $SignupCopyWith<$Res>(_value.signupRequest, (value) {
      return _then(_value.copyWith(signupRequest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SignupStateCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$$_SignupStateCopyWith(
          _$_SignupState value, $Res Function(_$_SignupState) then) =
      __$$_SignupStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isProcessing,
      Signup signupRequest,
      TextEditingController emailController,
      TextEditingController passwordController,
      TextEditingController managerNameController,
      TextEditingController restaurantNameController});

  @override
  $SignupCopyWith<$Res> get signupRequest;
}

/// @nodoc
class __$$_SignupStateCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$_SignupState>
    implements _$$_SignupStateCopyWith<$Res> {
  __$$_SignupStateCopyWithImpl(
      _$_SignupState _value, $Res Function(_$_SignupState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isProcessing = null,
    Object? signupRequest = null,
    Object? emailController = null,
    Object? passwordController = null,
    Object? managerNameController = null,
    Object? restaurantNameController = null,
  }) {
    return _then(_$_SignupState(
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      signupRequest: null == signupRequest
          ? _value.signupRequest
          : signupRequest // ignore: cast_nullable_to_non_nullable
              as Signup,
      emailController: null == emailController
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: null == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      managerNameController: null == managerNameController
          ? _value.managerNameController
          : managerNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      restaurantNameController: null == restaurantNameController
          ? _value.restaurantNameController
          : restaurantNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$_SignupState implements _SignupState {
  const _$_SignupState(
      {required this.isProcessing,
      required this.signupRequest,
      required this.emailController,
      required this.passwordController,
      required this.managerNameController,
      required this.restaurantNameController});

  @override
  final bool isProcessing;
  @override
  final Signup signupRequest;
  @override
  final TextEditingController emailController;
  @override
  final TextEditingController passwordController;
  @override
  final TextEditingController managerNameController;
  @override
  final TextEditingController restaurantNameController;

  @override
  String toString() {
    return 'SignupState(isProcessing: $isProcessing, signupRequest: $signupRequest, emailController: $emailController, passwordController: $passwordController, managerNameController: $managerNameController, restaurantNameController: $restaurantNameController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignupState &&
            (identical(other.isProcessing, isProcessing) ||
                other.isProcessing == isProcessing) &&
            (identical(other.signupRequest, signupRequest) ||
                other.signupRequest == signupRequest) &&
            (identical(other.emailController, emailController) ||
                other.emailController == emailController) &&
            (identical(other.passwordController, passwordController) ||
                other.passwordController == passwordController) &&
            (identical(other.managerNameController, managerNameController) ||
                other.managerNameController == managerNameController) &&
            (identical(
                    other.restaurantNameController, restaurantNameController) ||
                other.restaurantNameController == restaurantNameController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isProcessing,
      signupRequest,
      emailController,
      passwordController,
      managerNameController,
      restaurantNameController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignupStateCopyWith<_$_SignupState> get copyWith =>
      __$$_SignupStateCopyWithImpl<_$_SignupState>(this, _$identity);
}

abstract class _SignupState implements SignupState {
  const factory _SignupState(
          {required final bool isProcessing,
          required final Signup signupRequest,
          required final TextEditingController emailController,
          required final TextEditingController passwordController,
          required final TextEditingController managerNameController,
          required final TextEditingController restaurantNameController}) =
      _$_SignupState;

  @override
  bool get isProcessing;
  @override
  Signup get signupRequest;
  @override
  TextEditingController get emailController;
  @override
  TextEditingController get passwordController;
  @override
  TextEditingController get managerNameController;
  @override
  TextEditingController get restaurantNameController;
  @override
  @JsonKey(ignore: true)
  _$$_SignupStateCopyWith<_$_SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}
