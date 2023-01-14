import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class GetSelectedUserCubit extends Cubit<String> {
  GetSelectedUserCubit() : super('');

  void setName(String name) {
    emit(name);
  }
}
