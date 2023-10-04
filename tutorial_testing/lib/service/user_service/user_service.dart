import 'package:dio/dio.dart';
import 'package:tutorial_testing/shared/util/dio/dio.dart';

class UserService {
  Future<List> getUsers() async {
    try {
      var response = await dio.get(
        "https://reqres.in/api/users",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
      );
      Map obj = response.data;
      return obj["data"];
    } on Exception {
      throw Exception("request failed");
    }
  }
}
