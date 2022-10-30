// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      uid: json['uid'] as String? ?? '',
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      photoUrl: json['photoUrl'] as String? ?? '',
      status: json['status'] as String? ?? '',
      updateTime: json['updateTime'] as String? ?? '',
      creationTime: json['creationTime'] as String? ?? '',
      lastSignInTime: json['lastSignInTime'] as String? ?? '',
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'email': instance.email,
      'photoUrl': instance.photoUrl,
      'status': instance.status,
      'updateTime': instance.updateTime,
      'creationTime': instance.creationTime,
      'lastSignInTime': instance.lastSignInTime,
    };
