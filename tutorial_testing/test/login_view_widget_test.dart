import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tutorial_testing/module/login/view/login_view.dart';
import 'package:tutorial_testing/state_util.dart';

void main() {
  setUp(() {
    //---
  });

  testWidgets('Widget Test for LoginView', (WidgetTester tester) async {
    // Build our LoginView widget.
    await tester.pumpWidget(
      MaterialApp(
        navigatorKey: Get.navigatorKey,
        home: const LoginView(),
      ),
    );

    // Verify if the initial widget is displayed
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);

    // Simulate user input in the email and password fields
    await tester.enterText(find.byKey(const Key('email')), 'user@demo.com');
    await tester.enterText(find.byKey(const Key('password')), '123456');

    // // Verify if the user input is correctly entered
    expect(find.text('user@demo.com'), findsOneWidget);
    expect(find.text('123456'), findsOneWidget);

    // // Simulate a tap on the login button
    expect(find.byKey(const Key('login_btn')), findsOneWidget);
  });
}
