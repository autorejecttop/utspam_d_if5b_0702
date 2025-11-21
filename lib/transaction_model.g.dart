// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionData _$TransactionDataFromJson(Map<String, dynamic> json) =>
    _TransactionData(
      transactionId: (json['transaction_id'] as num).toInt(),
      medicineId: (json['medicine_id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      totalAmount: json['total_amount'] as num,
      paymentMethod: $enumDecode(
        _$PurchaseMethodEnumMap,
        json['payment_method'],
      ),
      note: json['note'] as String?,
      prescriptionNumber: json['prescription_number'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$TransactionDataToJson(_TransactionData instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'medicine_id': instance.medicineId,
      'user_id': instance.userId,
      'quantity': instance.quantity,
      'total_amount': instance.totalAmount,
      'payment_method': _$PurchaseMethodEnumMap[instance.paymentMethod]!,
      'note': instance.note,
      'prescription_number': instance.prescriptionNumber,
      'created_at': instance.createdAt.toIso8601String(),
    };

const _$PurchaseMethodEnumMap = {
  PurchaseMethod.direct: 'direct',
  PurchaseMethod.prescription: 'prescription',
};
