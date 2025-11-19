// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MedicineData _$MedicineDataFromJson(Map<String, dynamic> json) =>
    _MedicineData(
      name: json['name'] as String,
      category: $enumDecode(_$MedicineCategoryEnumMap, json['category']),
      imageUrl: json['image_url'] as String,
      price: json['price'] as num,
    );

Map<String, dynamic> _$MedicineDataToJson(_MedicineData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'category': _$MedicineCategoryEnumMap[instance.category]!,
      'image_url': instance.imageUrl,
      'price': instance.price,
    };

const _$MedicineCategoryEnumMap = {
  MedicineCategory.vitamin: 'vitamin',
  MedicineCategory.antibiotic: 'antibiotic',
  MedicineCategory.antiseptic: 'antiseptic',
};
