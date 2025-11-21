// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionData implements DiagnosticableTreeMixin {

 int get transactionId; int get medicineId; int get userId; int get quantity; num get totalAmount; PurchaseMethod get paymentMethod; String? get note; String? get prescriptionNumber; DateTime get createdAt;
/// Create a copy of TransactionData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionDataCopyWith<TransactionData> get copyWith => _$TransactionDataCopyWithImpl<TransactionData>(this as TransactionData, _$identity);

  /// Serializes this TransactionData to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TransactionData'))
    ..add(DiagnosticsProperty('transactionId', transactionId))..add(DiagnosticsProperty('medicineId', medicineId))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('quantity', quantity))..add(DiagnosticsProperty('totalAmount', totalAmount))..add(DiagnosticsProperty('paymentMethod', paymentMethod))..add(DiagnosticsProperty('note', note))..add(DiagnosticsProperty('prescriptionNumber', prescriptionNumber))..add(DiagnosticsProperty('createdAt', createdAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionData&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.medicineId, medicineId) || other.medicineId == medicineId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.note, note) || other.note == note)&&(identical(other.prescriptionNumber, prescriptionNumber) || other.prescriptionNumber == prescriptionNumber)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,medicineId,userId,quantity,totalAmount,paymentMethod,note,prescriptionNumber,createdAt);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TransactionData(transactionId: $transactionId, medicineId: $medicineId, userId: $userId, quantity: $quantity, totalAmount: $totalAmount, paymentMethod: $paymentMethod, note: $note, prescriptionNumber: $prescriptionNumber, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $TransactionDataCopyWith<$Res>  {
  factory $TransactionDataCopyWith(TransactionData value, $Res Function(TransactionData) _then) = _$TransactionDataCopyWithImpl;
@useResult
$Res call({
 int transactionId, int medicineId, int userId, int quantity, num totalAmount, PurchaseMethod paymentMethod, String? note, String? prescriptionNumber, DateTime createdAt
});




}
/// @nodoc
class _$TransactionDataCopyWithImpl<$Res>
    implements $TransactionDataCopyWith<$Res> {
  _$TransactionDataCopyWithImpl(this._self, this._then);

  final TransactionData _self;
  final $Res Function(TransactionData) _then;

/// Create a copy of TransactionData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? medicineId = null,Object? userId = null,Object? quantity = null,Object? totalAmount = null,Object? paymentMethod = null,Object? note = freezed,Object? prescriptionNumber = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,medicineId: null == medicineId ? _self.medicineId : medicineId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as num,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PurchaseMethod,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,prescriptionNumber: freezed == prescriptionNumber ? _self.prescriptionNumber : prescriptionNumber // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionData].
extension TransactionDataPatterns on TransactionData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionData value)  $default,){
final _that = this;
switch (_that) {
case _TransactionData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionData value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int transactionId,  int medicineId,  int userId,  int quantity,  num totalAmount,  PurchaseMethod paymentMethod,  String? note,  String? prescriptionNumber,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionData() when $default != null:
return $default(_that.transactionId,_that.medicineId,_that.userId,_that.quantity,_that.totalAmount,_that.paymentMethod,_that.note,_that.prescriptionNumber,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int transactionId,  int medicineId,  int userId,  int quantity,  num totalAmount,  PurchaseMethod paymentMethod,  String? note,  String? prescriptionNumber,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _TransactionData():
return $default(_that.transactionId,_that.medicineId,_that.userId,_that.quantity,_that.totalAmount,_that.paymentMethod,_that.note,_that.prescriptionNumber,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int transactionId,  int medicineId,  int userId,  int quantity,  num totalAmount,  PurchaseMethod paymentMethod,  String? note,  String? prescriptionNumber,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _TransactionData() when $default != null:
return $default(_that.transactionId,_that.medicineId,_that.userId,_that.quantity,_that.totalAmount,_that.paymentMethod,_that.note,_that.prescriptionNumber,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _TransactionData with DiagnosticableTreeMixin implements TransactionData {
  const _TransactionData({required this.transactionId, required this.medicineId, required this.userId, required this.quantity, required this.totalAmount, required this.paymentMethod, this.note, this.prescriptionNumber, required this.createdAt});
  factory _TransactionData.fromJson(Map<String, dynamic> json) => _$TransactionDataFromJson(json);

@override final  int transactionId;
@override final  int medicineId;
@override final  int userId;
@override final  int quantity;
@override final  num totalAmount;
@override final  PurchaseMethod paymentMethod;
@override final  String? note;
@override final  String? prescriptionNumber;
@override final  DateTime createdAt;

/// Create a copy of TransactionData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionDataCopyWith<_TransactionData> get copyWith => __$TransactionDataCopyWithImpl<_TransactionData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionDataToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TransactionData'))
    ..add(DiagnosticsProperty('transactionId', transactionId))..add(DiagnosticsProperty('medicineId', medicineId))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('quantity', quantity))..add(DiagnosticsProperty('totalAmount', totalAmount))..add(DiagnosticsProperty('paymentMethod', paymentMethod))..add(DiagnosticsProperty('note', note))..add(DiagnosticsProperty('prescriptionNumber', prescriptionNumber))..add(DiagnosticsProperty('createdAt', createdAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionData&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.medicineId, medicineId) || other.medicineId == medicineId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.note, note) || other.note == note)&&(identical(other.prescriptionNumber, prescriptionNumber) || other.prescriptionNumber == prescriptionNumber)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,medicineId,userId,quantity,totalAmount,paymentMethod,note,prescriptionNumber,createdAt);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TransactionData(transactionId: $transactionId, medicineId: $medicineId, userId: $userId, quantity: $quantity, totalAmount: $totalAmount, paymentMethod: $paymentMethod, note: $note, prescriptionNumber: $prescriptionNumber, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$TransactionDataCopyWith<$Res> implements $TransactionDataCopyWith<$Res> {
  factory _$TransactionDataCopyWith(_TransactionData value, $Res Function(_TransactionData) _then) = __$TransactionDataCopyWithImpl;
@override @useResult
$Res call({
 int transactionId, int medicineId, int userId, int quantity, num totalAmount, PurchaseMethod paymentMethod, String? note, String? prescriptionNumber, DateTime createdAt
});




}
/// @nodoc
class __$TransactionDataCopyWithImpl<$Res>
    implements _$TransactionDataCopyWith<$Res> {
  __$TransactionDataCopyWithImpl(this._self, this._then);

  final _TransactionData _self;
  final $Res Function(_TransactionData) _then;

/// Create a copy of TransactionData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? medicineId = null,Object? userId = null,Object? quantity = null,Object? totalAmount = null,Object? paymentMethod = null,Object? note = freezed,Object? prescriptionNumber = freezed,Object? createdAt = null,}) {
  return _then(_TransactionData(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,medicineId: null == medicineId ? _self.medicineId : medicineId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as num,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PurchaseMethod,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,prescriptionNumber: freezed == prescriptionNumber ? _self.prescriptionNumber : prescriptionNumber // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
