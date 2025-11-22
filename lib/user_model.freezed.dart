// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserData implements DiagnosticableTreeMixin {

@JsonKey(includeFromJson: true, includeToJson: false) int? get userId; String get name; String get email; String get phoneNumber; String get address; String get username;@JsonKey(includeFromJson: false, includeToJson: false) String? get password;@JsonKey(includeFromJson: true, includeToJson: true) String? get passwordHash;
/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDataCopyWith<UserData> get copyWith => _$UserDataCopyWithImpl<UserData>(this as UserData, _$identity);

  /// Serializes this UserData to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserData'))
    ..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('phoneNumber', phoneNumber))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('username', username))..add(DiagnosticsProperty('password', password))..add(DiagnosticsProperty('passwordHash', passwordHash));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserData&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.address, address) || other.address == address)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.passwordHash, passwordHash) || other.passwordHash == passwordHash));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,name,email,phoneNumber,address,username,password,passwordHash);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserData(userId: $userId, name: $name, email: $email, phoneNumber: $phoneNumber, address: $address, username: $username, password: $password, passwordHash: $passwordHash)';
}


}

/// @nodoc
abstract mixin class $UserDataCopyWith<$Res>  {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) _then) = _$UserDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeFromJson: true, includeToJson: false) int? userId, String name, String email, String phoneNumber, String address, String username,@JsonKey(includeFromJson: false, includeToJson: false) String? password,@JsonKey(includeFromJson: true, includeToJson: true) String? passwordHash
});




}
/// @nodoc
class _$UserDataCopyWithImpl<$Res>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._self, this._then);

  final UserData _self;
  final $Res Function(UserData) _then;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? name = null,Object? email = null,Object? phoneNumber = null,Object? address = null,Object? username = null,Object? password = freezed,Object? passwordHash = freezed,}) {
  return _then(_self.copyWith(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,passwordHash: freezed == passwordHash ? _self.passwordHash : passwordHash // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserData].
extension UserDataPatterns on UserData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserData value)  $default,){
final _that = this;
switch (_that) {
case _UserData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserData value)?  $default,){
final _that = this;
switch (_that) {
case _UserData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeFromJson: true, includeToJson: false)  int? userId,  String name,  String email,  String phoneNumber,  String address,  String username, @JsonKey(includeFromJson: false, includeToJson: false)  String? password, @JsonKey(includeFromJson: true, includeToJson: true)  String? passwordHash)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserData() when $default != null:
return $default(_that.userId,_that.name,_that.email,_that.phoneNumber,_that.address,_that.username,_that.password,_that.passwordHash);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeFromJson: true, includeToJson: false)  int? userId,  String name,  String email,  String phoneNumber,  String address,  String username, @JsonKey(includeFromJson: false, includeToJson: false)  String? password, @JsonKey(includeFromJson: true, includeToJson: true)  String? passwordHash)  $default,) {final _that = this;
switch (_that) {
case _UserData():
return $default(_that.userId,_that.name,_that.email,_that.phoneNumber,_that.address,_that.username,_that.password,_that.passwordHash);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeFromJson: true, includeToJson: false)  int? userId,  String name,  String email,  String phoneNumber,  String address,  String username, @JsonKey(includeFromJson: false, includeToJson: false)  String? password, @JsonKey(includeFromJson: true, includeToJson: true)  String? passwordHash)?  $default,) {final _that = this;
switch (_that) {
case _UserData() when $default != null:
return $default(_that.userId,_that.name,_that.email,_that.phoneNumber,_that.address,_that.username,_that.password,_that.passwordHash);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _UserData with DiagnosticableTreeMixin implements UserData {
  const _UserData({@JsonKey(includeFromJson: true, includeToJson: false) this.userId, required this.name, required this.email, required this.phoneNumber, required this.address, required this.username, @JsonKey(includeFromJson: false, includeToJson: false) this.password, @JsonKey(includeFromJson: true, includeToJson: true) this.passwordHash});
  factory _UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);

@override@JsonKey(includeFromJson: true, includeToJson: false) final  int? userId;
@override final  String name;
@override final  String email;
@override final  String phoneNumber;
@override final  String address;
@override final  String username;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  String? password;
@override@JsonKey(includeFromJson: true, includeToJson: true) final  String? passwordHash;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDataCopyWith<_UserData> get copyWith => __$UserDataCopyWithImpl<_UserData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDataToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserData'))
    ..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('phoneNumber', phoneNumber))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('username', username))..add(DiagnosticsProperty('password', password))..add(DiagnosticsProperty('passwordHash', passwordHash));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserData&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.address, address) || other.address == address)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.passwordHash, passwordHash) || other.passwordHash == passwordHash));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,name,email,phoneNumber,address,username,password,passwordHash);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserData(userId: $userId, name: $name, email: $email, phoneNumber: $phoneNumber, address: $address, username: $username, password: $password, passwordHash: $passwordHash)';
}


}

/// @nodoc
abstract mixin class _$UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$UserDataCopyWith(_UserData value, $Res Function(_UserData) _then) = __$UserDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeFromJson: true, includeToJson: false) int? userId, String name, String email, String phoneNumber, String address, String username,@JsonKey(includeFromJson: false, includeToJson: false) String? password,@JsonKey(includeFromJson: true, includeToJson: true) String? passwordHash
});




}
/// @nodoc
class __$UserDataCopyWithImpl<$Res>
    implements _$UserDataCopyWith<$Res> {
  __$UserDataCopyWithImpl(this._self, this._then);

  final _UserData _self;
  final $Res Function(_UserData) _then;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? name = null,Object? email = null,Object? phoneNumber = null,Object? address = null,Object? username = null,Object? password = freezed,Object? passwordHash = freezed,}) {
  return _then(_UserData(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,passwordHash: freezed == passwordHash ? _self.passwordHash : passwordHash // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
