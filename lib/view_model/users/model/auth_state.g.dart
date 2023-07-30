// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthState _$$_AuthStateFromJson(Map<String, dynamic> json) => _$_AuthState(
      status: $enumDecode(_$StatusEnumMap, json['status']),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      signupRequest: json['signupRequest'] == null
          ? null
          : SignupRequest.fromJson(
              json['signupRequest'] as Map<String, dynamic>),
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$_AuthStateToJson(_$_AuthState instance) =>
    <String, dynamic>{
      'status': _$StatusEnumMap[instance.status]!,
      'user': instance.user,
      'signupRequest': instance.signupRequest,
      'errorMessage': instance.errorMessage,
    };

const _$StatusEnumMap = {
  Status.idle: 'idle',
  Status.loading: 'loading',
  Status.success: 'success',
  Status.error: 'error',
};
