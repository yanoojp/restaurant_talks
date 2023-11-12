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
  CustomisedUser get user => throw _privateConstructorUsedError;
  TextEditingController get emailController =>
      throw _privateConstructorUsedError;
  TextEditingController get passwordController =>
      throw _privateConstructorUsedError;
  TextEditingController get managerNameController =>
      throw _privateConstructorUsedError;
  TextEditingController get restaurantNameController =>
      throw _privateConstructorUsedError;
  String get currentLanguage => throw _privateConstructorUsedError;

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
      {CustomisedUser user,
      TextEditingController emailController,
      TextEditingController passwordController,
      TextEditingController managerNameController,
      TextEditingController restaurantNameController,
      String currentLanguage});

  $CustomisedUserCopyWith<$Res> get user;
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
    Object? user = null,
    Object? emailController = null,
    Object? passwordController = null,
    Object? managerNameController = null,
    Object? restaurantNameController = null,
    Object? currentLanguage = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as CustomisedUser,
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
      currentLanguage: null == currentLanguage
          ? _value.currentLanguage
          : currentLanguage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomisedUserCopyWith<$Res> get user {
    return $CustomisedUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
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
      {CustomisedUser user,
      TextEditingController emailController,
      TextEditingController passwordController,
      TextEditingController managerNameController,
      TextEditingController restaurantNameController,
      String currentLanguage});

  @override
  $CustomisedUserCopyWith<$Res> get user;
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
    Object? user = null,
    Object? emailController = null,
    Object? passwordController = null,
    Object? managerNameController = null,
    Object? restaurantNameController = null,
    Object? currentLanguage = null,
  }) {
    return _then(_$_SignupState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as CustomisedUser,
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
      currentLanguage: null == currentLanguage
          ? _value.currentLanguage
          : currentLanguage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignupState implements _SignupState {
  const _$_SignupState(
      {required this.user,
      required this.emailController,
      required this.passwordController,
      required this.managerNameController,
      required this.restaurantNameController,
      required this.currentLanguage});

  @override
  final CustomisedUser user;
  @override
  final TextEditingController emailController;
  @override
  final TextEditingController passwordController;
  @override
  final TextEditingController managerNameController;
  @override
  final TextEditingController restaurantNameController;
  @override
  final String currentLanguage;

  @override
  String toString() {
    return 'SignupState(user: $user, emailController: $emailController, passwordController: $passwordController, managerNameController: $managerNameController, restaurantNameController: $restaurantNameController, currentLanguage: $currentLanguage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignupState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.emailController, emailController) ||
                other.emailController == emailController) &&
            (identical(other.passwordController, passwordController) ||
                other.passwordController == passwordController) &&
            (identical(other.managerNameController, managerNameController) ||
                other.managerNameController == managerNameController) &&
            (identical(
                    other.restaurantNameController, restaurantNameController) ||
                other.restaurantNameController == restaurantNameController) &&
            (identical(other.currentLanguage, currentLanguage) ||
                other.currentLanguage == currentLanguage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      emailController,
      passwordController,
      managerNameController,
      restaurantNameController,
      currentLanguage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignupStateCopyWith<_$_SignupState> get copyWith =>
      __$$_SignupStateCopyWithImpl<_$_SignupState>(this, _$identity);
}

abstract class _SignupState implements SignupState {
  const factory _SignupState(
      {required final CustomisedUser user,
      required final TextEditingController emailController,
      required final TextEditingController passwordController,
      required final TextEditingController managerNameController,
      required final TextEditingController restaurantNameController,
      required final String currentLanguage}) = _$_SignupState;

  @override
  CustomisedUser get user;
  @override
  TextEditingController get emailController;
  @override
  TextEditingController get passwordController;
  @override
  TextEditingController get managerNameController;
  @override
  TextEditingController get restaurantNameController;
  @override
  String get currentLanguage;
  @override
  @JsonKey(ignore: true)
  _$$_SignupStateCopyWith<_$_SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}
