// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      name: json['name'] as String,
      stockCount: json['stockCount'] as int,
      category: json['category'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'name': instance.name,
      'stockCount': instance.stockCount,
      'category': instance.category,
      'description': instance.description,
    };
