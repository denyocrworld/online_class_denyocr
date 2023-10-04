import 'package:flutter_test/flutter_test.dart';
import 'package:tutorial_testing/service/user_service/user_service.dart';

void main() {
  setUp(() {
    //---
  });

  test('Menguji getUsers - Respons', () async {
    final userService = UserService();

    // Panggil metode getUsers dari UserService
    final users = await userService.getUsers();

    // Periksa apakah respons adalah data yang sesuai
    expect(users, isList);
  });
}
