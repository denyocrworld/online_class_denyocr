import 'package:flutter_test/flutter_test.dart';
import 'package:tutorial_testing/shared/util/date_util/date_util.dart';

void main() {
  group('DateUtil Tests 1', () {
    test('Format DateTime', () {
      final dateTime =
          DateTime(2023, 10, 4, 14, 30); // Contoh tanggal dan waktu tertentu
      final formattedDate = DateUtil.formatDateTime(dateTime, 'd MMM y');
      expect(formattedDate, '4 Oct 2023');
    });

    test('Format DateTime with Different Format', () {
      final dateTime =
          DateTime(2023, 10, 4, 18, 45); // Contoh tanggal dan waktu tertentu
      final formattedDate =
          DateUtil.formatDateTime(dateTime, 'yyyy/MM/dd HH:mm');

      expect(formattedDate, '2023/10/04 18:45');
    });

    // Tambahkan tes lainnya sesuai kebutuhan Anda
  });

  group('DateUtil Tests 2', () {
    test('Format with d MMM y kk:ss', () {
      final dateTime =
          DateTime(2023, 10, 4, 14, 30); // Contoh tanggal dan waktu tertentu
      final formattedDate = DateUtil.formatDateTime(dateTime, 'd MMM y kk:mm');
      expect(formattedDate, '4 Oct 2023 14:30');
    });

    // Tambahkan tes lainnya sesuai kebutuhan Anda
  });
}
