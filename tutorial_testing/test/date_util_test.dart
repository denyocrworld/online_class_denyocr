import 'package:flutter_test/flutter_test.dart';
import 'package:tutorial_testing/shared/util/date_util/date_util.dart';

void main() {
  group('DateUtil Tests', () {
    test('Format DateTime', () {
      final dateTime =
          DateTime(2023, 10, 4, 14, 30); // Contoh tanggal dan waktu tertentu
      final formattedDate =
          DateUtil.formatDateTime(dateTime, 'dd-MM-yyyy HH:mm:ss');

      expect(formattedDate, '04-10-2023 14:30:00');
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
}
