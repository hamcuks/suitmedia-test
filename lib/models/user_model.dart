import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int page,
    @JsonKey(name: 'per_page') required int perPage,
    required int total,
    @JsonKey(name: 'total_pages') required int totalPage,
    required List<UserItemModel> data,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class UserItemModel with _$UserItemModel {
  const factory UserItemModel({
    required int id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String email,
    required String avatar,
  }) = _UserItemModel;

  factory UserItemModel.fromJson(Map<String, dynamic> json) =>
      _$UserItemModelFromJson(json);
}
