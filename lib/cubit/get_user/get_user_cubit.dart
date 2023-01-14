import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suitmedia_kampusmerdeka_tkd/models/user_model.dart';
import 'package:suitmedia_kampusmerdeka_tkd/services/user_service.dart';

part 'get_user_cubit.freezed.dart';

enum GetUserState { initial, loading, success, error }

@freezed
class GetUserStatus with _$GetUserStatus {
  const factory GetUserStatus({
    @Default(GetUserState.initial) GetUserState status,
    @Default([]) List<UserItemModel> items,
  }) = _GetUserStatus;
}

class GetUserCubit extends Cubit<GetUserStatus> {
  GetUserCubit() : super(const GetUserStatus());

  void getUsers({int? page}) async {
    emit(state.copyWith(status: GetUserState.loading));

    try {
      final items = await UserService().getUsers(page: page ?? 1);
      emit(GetUserStatus(
        status: GetUserState.success,
        items: items.data,
      ));
    } catch (_) {
      emit(const GetUserStatus(
        status: GetUserState.error,
      ));
    }
  }
}
