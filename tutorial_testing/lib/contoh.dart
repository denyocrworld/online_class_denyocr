import 'package:intl/intl.dart';
import 'package:tutorial_testing/shared/util/date_util/date_util.dart';

void main() {
  String dob = DateUtil.formatDateTime(DateTime.now(), "d MMM y`");
  print(dob);
}
