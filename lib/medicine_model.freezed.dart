// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medicine_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MedicineData implements DiagnosticableTreeMixin {

@JsonKey(includeFromJson: true, includeToJson: false) int? get medicineId; String get name; MedicineCategory get category; String get imageUrl; num get price;
/// Create a copy of MedicineData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MedicineDataCopyWith<MedicineData> get copyWith => _$MedicineDataCopyWithImpl<MedicineData>(this as MedicineData, _$identity);

  /// Serializes this MedicineData to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MedicineData'))
    ..add(DiagnosticsProperty('medicineId', medicineId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('category', category))..add(DiagnosticsProperty('imageUrl', imageUrl))..add(DiagnosticsProperty('price', price));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MedicineData&&(identical(other.medicineId, medicineId) || other.medicineId == medicineId)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,medicineId,name,category,imageUrl,price);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MedicineData(medicineId: $medicineId, name: $name, category: $category, imageUrl: $imageUrl, price: $price)';
}


}

/// @nodoc
abstract mixin class $MedicineDataCopyWith<$Res>  {
  factory $MedicineDataCopyWith(MedicineData value, $Res Function(MedicineData) _then) = _$MedicineDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeFromJson: true, includeToJson: false) int? medicineId, String name, MedicineCategory category, String imageUrl, num price
});




}
/// @nodoc
class _$MedicineDataCopyWithImpl<$Res>
    implements $MedicineDataCopyWith<$Res> {
  _$MedicineDataCopyWithImpl(this._self, this._then);

  final MedicineData _self;
  final $Res Function(MedicineData) _then;

/// Create a copy of MedicineData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? medicineId = freezed,Object? name = null,Object? category = null,Object? imageUrl = null,Object? price = null,}) {
  return _then(_self.copyWith(
medicineId: freezed == medicineId ? _self.medicineId : medicineId // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as MedicineCategory,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,
  ));
}

}


/// Adds pattern-matching-related methods to [MedicineData].
extension MedicineDataPatterns on MedicineData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MedicineData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MedicineData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MedicineData value)  $default,){
final _that = this;
switch (_that) {
case _MedicineData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MedicineData value)?  $default,){
final _that = this;
switch (_that) {
case _MedicineData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeFromJson: true, includeToJson: false)  int? medicineId,  String name,  MedicineCategory category,  String imageUrl,  num price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MedicineData() when $default != null:
return $default(_that.medicineId,_that.name,_that.category,_that.imageUrl,_that.price);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeFromJson: true, includeToJson: false)  int? medicineId,  String name,  MedicineCategory category,  String imageUrl,  num price)  $default,) {final _that = this;
switch (_that) {
case _MedicineData():
return $default(_that.medicineId,_that.name,_that.category,_that.imageUrl,_that.price);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeFromJson: true, includeToJson: false)  int? medicineId,  String name,  MedicineCategory category,  String imageUrl,  num price)?  $default,) {final _that = this;
switch (_that) {
case _MedicineData() when $default != null:
return $default(_that.medicineId,_that.name,_that.category,_that.imageUrl,_that.price);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _MedicineData with DiagnosticableTreeMixin implements MedicineData {
  const _MedicineData({@JsonKey(includeFromJson: true, includeToJson: false) this.medicineId, required this.name, required this.category, required this.imageUrl, required this.price});
  factory _MedicineData.fromJson(Map<String, dynamic> json) => _$MedicineDataFromJson(json);

@override@JsonKey(includeFromJson: true, includeToJson: false) final  int? medicineId;
@override final  String name;
@override final  MedicineCategory category;
@override final  String imageUrl;
@override final  num price;

/// Create a copy of MedicineData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MedicineDataCopyWith<_MedicineData> get copyWith => __$MedicineDataCopyWithImpl<_MedicineData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MedicineDataToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MedicineData'))
    ..add(DiagnosticsProperty('medicineId', medicineId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('category', category))..add(DiagnosticsProperty('imageUrl', imageUrl))..add(DiagnosticsProperty('price', price));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MedicineData&&(identical(other.medicineId, medicineId) || other.medicineId == medicineId)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,medicineId,name,category,imageUrl,price);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MedicineData(medicineId: $medicineId, name: $name, category: $category, imageUrl: $imageUrl, price: $price)';
}


}

/// @nodoc
abstract mixin class _$MedicineDataCopyWith<$Res> implements $MedicineDataCopyWith<$Res> {
  factory _$MedicineDataCopyWith(_MedicineData value, $Res Function(_MedicineData) _then) = __$MedicineDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeFromJson: true, includeToJson: false) int? medicineId, String name, MedicineCategory category, String imageUrl, num price
});




}
/// @nodoc
class __$MedicineDataCopyWithImpl<$Res>
    implements _$MedicineDataCopyWith<$Res> {
  __$MedicineDataCopyWithImpl(this._self, this._then);

  final _MedicineData _self;
  final $Res Function(_MedicineData) _then;

/// Create a copy of MedicineData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? medicineId = freezed,Object? name = null,Object? category = null,Object? imageUrl = null,Object? price = null,}) {
  return _then(_MedicineData(
medicineId: freezed == medicineId ? _self.medicineId : medicineId // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as MedicineCategory,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,
  ));
}


}

// dart format on
