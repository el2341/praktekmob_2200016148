import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('Login form test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(LoginApp());

    // Verify that the initial state is empty.
    expect(find.text('Nama Pengguna'), findsOneWidget);
    expect(find.text('Kata Sandi'), findsOneWidget);

    // Enter text for username and password
    await tester.enterText(find.byType(TextFormField).at(0), '2200016148');
    await tester.enterText(find.byType(TextFormField).at(1), 'responsi_D_tekmob_izzuddin hammam ulhaq');

    // Tap the login button
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    // Verify that a welcome message is shown
    expect(find.text('Selamat datang, Izzuddin Hammam Ulhaq!'), findsOneWidget);
  });
}
