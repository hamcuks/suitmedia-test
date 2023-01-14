// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetUserStatus {
  GetUserState get status => throw _privateConstructorUsedError;
  List<UserItemModel> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetUserStatusCopyWith<GetUserStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserStatusCopyWith<$Res> {
  factory $GetUserStatusCopyWith(
          GetUserStatus value, $Res Function(GetUserStatus) then) =
      _$GetUserStatusCopyWithImpl<$Res, GetUserStatus>;
  @useResult
  $Res call({GetUserState status, List<UserItemModel> items});
}

/// @nodoc
class _$GetUserStatusCopyWithImpl<$Res, $Val extends GetUserStatus>
    implements $GetUserStatusCopyWith<$Res> {
  _$GetUserStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GetUserState,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<UserItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetUserStatusCopyWith<$Res>
    implements $GetUserStatusCopyWith<$Res> {
  factory _$$_GetUserStatusCopyWith(
          _$_GetUserStatus value, $Res Function(_$_GetUserStatus) then) =
      __$$_GetUserStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GetUserState status, List<UserItemModel> items});
}

/// @nodoc
class __$$_GetUserStatusCopyWithImpl<$Res>
    extends _$GetUserStatusCopyWithImpl<$Res, _$_GetUserStatus>
    implements _$$_GetUserStatusCopyWith<$Res> {
  __$$_GetUserStatusCopyWithImpl(
      _$_GetUserStatus _value, $Res Function(_$_GetUserStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? items = null,
  }) {
    return _then(_$_GetUserStatus(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GetUserState,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<UserItemModel>,
    ));
  }
}

/// @nodoc

class _$_GetUserStatus implements _GetUserStatus {
  const _$_GetUserStatus(
      {this.status = GetUserState.initial,
      final List<UserItemModel> items = const []})
      : _items = items;

  @override
  @JsonKey()
  final GetUserState status;
  final List<UserItemModel> _items;
  @override
  @JsonKey()
  List<UserItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'GetUserStatus(status: $status, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetUserStatus &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetUserStatusCopyWith<_$_GetUserStatus> get copyWith =>
      __$$_GetUserStatusCopyWithImpl<_$_GetUserStatus>(this, _$identity);
}

abstract class _GetUserStatus implements GetUserStatus {
  const factory _GetUserStatus(
      {final GetUserState status,
      final List<UserItemModel> items}) = _$_GetUserStatus;

  @override
  GetUserState get status;
  @override
  List<UserItemModel> get items;
  @override
  @JsonKey(ignore: true)
  _$$_GetUserStatusCopyWith<_$_GetUserStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
