// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionData _$TransactionDataFromJson(Map<String, dynamic> json) =>
    _TransactionData(
      transactionId: (json['transaction_id'] as num?)?.toInt(),
      userId: (json['user_id'] as num).toInt(),
      medicineId: (json['medicine_id'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      totalPrice: json['total_price'] as num,
      purchaseMethod: $enumDecode(
        _$PurchaseMethodEnumMap,
        json['purchase_method'],
      ),
      note: json['note'] as String?,
      prescriptionNumber: json['prescription_number'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$TransactionDataToJson(_TransactionData instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'medicine_id': instance.medicineId,
      'quantity': instance.quantity,
      'total_price': instance.totalPrice,
      'purchase_method': _$PurchaseMethodEnumMap[instance.purchaseMethod]!,
      'note': instance.note,
      'prescription_number': instance.prescriptionNumber,
    };

const _$PurchaseMethodEnumMap = {
  PurchaseMethod.direct: 'direct',
  PurchaseMethod.prescription: 'prescription',
};
