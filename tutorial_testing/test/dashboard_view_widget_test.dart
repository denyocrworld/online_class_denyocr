import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:tutorial_testing/module/dashboard/view/dashboard_view.dart';
import 'package:tutorial_testing/shared/util/dio/dio.dart';
import 'package:tutorial_testing/state_util.dart';

void main() {
  // mocking

  setUp(() {
    var dioMock = Dio();
    var dioAdapter = DioAdapter(dio: dioMock);
    dio = dioMock;
    dioAdapter.onGet(
      "https://reqres.in/api/users",
      (request) => request.reply(200, {'data': []}),
    );
  });

  testWidgets('Widget Test for DashboardView', (WidgetTester tester) async {
    //-------------------------
    await tester.pumpWidget(
      MaterialApp(
        navigatorKey: Get.navigatorKey,
        home: const DashboardView(),
      ),
    );

    // Verify if the initial widget is displayed
    expect(find.text('Dashboard'), findsOneWidget);
    await tester.pumpAndSettle();
  });
}
