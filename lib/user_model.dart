import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bcrypt/bcrypt.dart';

import 'package:uts/database_service.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserData with _$UserData {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory UserData({
    @JsonKey(includeFromJson: true, includeToJson: false) int? userId,
    required String name,
    required String email,
    required String phoneNumber,
    required String address,
    required String username,
    @JsonKey(includeFromJson: false, includeToJson: false) String? password,
    @JsonKey(includeFromJson: true, includeToJson: true) String? passwordHash,
  }) = _UserData;

  factory UserData.fromJson(Map<String, Object?> json) =>
      _$UserDataFromJson(json);
}

class UserModel {
  final tableName = 'users';
  final databaseService = DatabaseService();

  Future<List<UserData>> findAll() async {
    final db = await databaseService.database;
    final result = await db.query(tableName);

    final data = result.map((map) => UserData.fromJson(map)).toList();
    return data;
  }

  Future<UserData> findOne(int userId) async {
    final db = await databaseService.database;
    final result = await db.query(
      tableName,
      where: 'user_id = ?',
      whereArgs: [userId],
    );
    return UserData.fromJson(result.first);
  }

  Future<int> create(UserData userData) async {
    final db = await databaseService.database;
    final passwordHash = BCrypt.hashpw(userData.password!, BCrypt.gensalt());

    final newUserData = userData.copyWith(passwordHash: passwordHash);

    return await db.insert(tableName, newUserData.toJson());
  }

  Future<UserData> login(String username, String password) async {
    final db = await databaseService.database;

    final result = await db.query(
      tableName,
      where: 'username = ?',
      whereArgs: [username],
    );

    if (result.isEmpty) {
      throw Exception('Username atau password salah!');
    }

    final userData = UserData.fromJson(result.first);

    if (!BCrypt.checkpw(password, userData.passwordHash!)) {
      throw Exception('Username atau password salah!');
    }

    return userData;
  }
}
