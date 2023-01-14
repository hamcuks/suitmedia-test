import 'package:dio/dio.dart';
import 'package:suitmedia_kampusmerdeka_tkd/models/user_model.dart';

class UserService {
  final Dio _dio = Dio();

  Future<UserModel> getUsers({int page = 1}) async {
    try {
      Response response =
          await _dio.get('https://reqres.in/api/users?page=$page');

      if (response.statusCode != 200) throw Exception('Server Error');

      return UserModel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
