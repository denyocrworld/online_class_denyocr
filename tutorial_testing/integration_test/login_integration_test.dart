import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_testing/main.dart' as app;

void main() {
  testWidgets('Login and Navigate to Dashboard', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(const app.MyApp());

    // Ensure the login view is displayed.
    expect(find.text('Login'), findsOneWidget);

    // Enter email and password.
    await tester.enterText(find.byKey(const Key('email')), 'user@example.com');
    await tester.enterText(find.byKey(const Key('password')), 'password123');

    // Tap the login button.
    await tester.tap(find.byKey(const Key('login_btn')));
    await tester.pumpAndSettle();

    // Ensure the dashboard view is displayed.
    expect(find.text('Dashboard'), findsOneWidget);
  });
}
