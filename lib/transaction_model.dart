import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:uts/database_service.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

enum PurchaseMethod { direct, prescription }

@freezed
abstract class TransactionData with _$TransactionData {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TransactionData({
    @JsonKey(includeFromJson: true, includeToJson: false) int? transactionId,
    required int userId,
    required int medicineId,
    required int quantity,
    required num totalPrice,
    required PurchaseMethod purchaseMethod,
    String? note,
    String? prescriptionNumber,
    @JsonKey(includeFromJson: true, includeToJson: false) DateTime? createdAt,
  }) = _TransactionData;

  factory TransactionData.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataFromJson(json);
}

class TransactionModel {
  final tableName = 'transactions';
  final DatabaseService databaseService = DatabaseService();

  Future<int> create(TransactionData transactionData) async {
    final db = await databaseService.database;
    return await db.insert(tableName, transactionData.toJson());
  }

  Future<List<TransactionData>> findAll() async {
    final db = await databaseService.database;
    final result = await db.query(tableName);

    final data = result.map((map) => TransactionData.fromJson(map)).toList();

    return data;
  }

  Future<int> delete(int id) async {
    final db = await databaseService.database;
    return await db.delete(
      tableName,
      where: 'transaction_id = ?',
      whereArgs: [id],
    );
  }
}
