import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class GetNameCubit extends Cubit<String> {
  GetNameCubit() : super('');

  void setName(String name) {
    emit(name);
  }
}
