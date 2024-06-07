import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_7/main.dart';

void main() {
  testWidgets('Increment counter test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    var myApp = MyApp;
    await tester.pumpWidget(MaterialApp(home: myApp()));

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the floating action button and trigger a frame.
    await tester.tap(find.byIcon(Icons.refresh)); // Change the icon to the one you use
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
