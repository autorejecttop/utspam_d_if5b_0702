import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uts/database_service.dart';

part 'medicine_model.freezed.dart';
part 'medicine_model.g.dart';

enum MedicineCategory { vitamin, antibiotic, antiseptic }

@freezed
abstract class MedicineData with _$MedicineData {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MedicineData({
    @JsonKey(includeFromJson: true, includeToJson: false) int? medicineId,
    required String name,
    required MedicineCategory category,
    required String imageUrl,
    required num price,
  }) = _MedicineData;

  factory MedicineData.fromJson(Map<String, dynamic> json) =>
      _$MedicineDataFromJson(json);
}

class MedicineModel {
  final String tableName = 'medicines';
  final databaseService = DatabaseService();

  Future<List<MedicineData>> findAll({
    String? orderBy = 'medicine_id ASC',
    int? limit,
  }) async {
    final db = await databaseService.database;
    final result = await db.query(tableName, orderBy: orderBy, limit: limit);

    final data = result.map((map) => MedicineData.fromJson(map)).toList();
    return data;
  }

  Future<int> create(MedicineData medicineData) async {
    final db = await databaseService.database;

    return await db.insert(tableName, medicineData.toJson());
  }
}
