// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Signup _$$_SignupFromJson(Map<String, dynamic> json) => _$_Signup(
      email: json['email'] as String,
      password: json['password'] as String,
      managerName: json['managerName'] as String,
      restaurantName: json['restaurantName'] as String,
      prefecture: json['prefecture'] as String,
    );

Map<String, dynamic> _$$_SignupToJson(_$_Signup instance) => <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'managerName': instance.managerName,
      'restaurantName': instance.restaurantName,
      'prefecture': instance.prefecture,
    };
