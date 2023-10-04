import 'package:flutter_test/flutter_test.dart';
import 'package:tutorial_testing/service/user_service/user_service.dart';
import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:tutorial_testing/shared/util/dio/dio.dart';

void main() {
  group('UserService Unit Test', () {
    late UserService userService;
    late Dio dioMock;
    late DioAdapter dioAdapter;

    setUp(() {
      // Create a Dio instance with a mock adapter
      dioMock = Dio();
      dioAdapter = DioAdapter(dio: dioMock);
      dio = dioMock;

      // Initialize UserService with the Dio instance
      userService = UserService();
    });

    test('Menguji getUsers - Berhasil', () async {
      // Configure the mock adapter to return a successful response
      dioAdapter.onGet(
        "https://reqres.in/api/users",
        (request) => request.reply(200, {'data': []}),
      );

      // Call getUsers from userService
      final users = await userService.getUsers();

      // Check if the response from getUsers is as expected
      expect(users, isList);
    });

    test('Menguji getUsers - Gagal', () async {
      // Configure the mock adapter to return an error response
      dioAdapter.onGet(
        "https://reqres.in/api/users",
        (request) => request.reply(500, {'error': 'Gagal'}),
      );

      // Call getUsers from userService
      try {
        await userService.getUsers();
      } catch (e) {
        // Check if an exception is thrown due to the error response
        expect(e, isA<Exception>());
        expect(e.toString(), "Exception: request failed");
      }
    });
  });
}
