// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farmhub_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FarmhubUser _$$_FarmhubUserFromJson(Map<String, dynamic> json) =>
    _$_FarmhubUser(
      uid: json['uid'] as String,
      email: json['email'] as String,
      username: json['username'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$_FarmhubUserToJson(_$_FarmhubUser instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'username': instance.username,
      'createdAt': instance.createdAt,
    };
