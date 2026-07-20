// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_access_data.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserAccessData _$UserAccessDataFromJson(Map<String, dynamic> json) =>
    _UserAccessData(
      userId: json['id'] as String,
      accessToken: json['access_token'] as String,
    );

Map<String, dynamic> _$UserAccessDataToJson(_UserAccessData instance) =>
    <String, dynamic>{
      'id': instance.userId,
      'access_token': instance.accessToken,
    };
