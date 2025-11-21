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
    required int transactionId,
    required int medicineId,
    required int userId,
    required int quantity,
    required num totalAmount,
    required PurchaseMethod paymentMethod,
    String? note,
    String? prescriptionNumber,
    required DateTime createdAt,
  }) = _TransactionData;

  factory TransactionData.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataFromJson(json);
}

class TransactionModel {
  final tableName = 'transactions';
  final DatabaseService databaseService = DatabaseService();

  Future<int> create(TransactionData transactionData) async {
    final db = await databaseService.database;
    return await db.insert('transactions', transactionData.toJson());
  }
}
