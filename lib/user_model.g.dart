// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserData _$UserDataFromJson(Map<String, dynamic> json) => _UserData(
  name: json['name'] as String,
  email: json['email'] as String,
  phoneNumber: json['phone_number'] as String,
  address: json['address'] as String,
  username: json['username'] as String,
  passwordHash: json['password_hash'] as String?,
);

Map<String, dynamic> _$UserDataToJson(_UserData instance) => <String, dynamic>{
  'name': instance.name,
  'email': instance.email,
  'phone_number': instance.phoneNumber,
  'address': instance.address,
  'username': instance.username,
  'password_hash': instance.passwordHash,
};
