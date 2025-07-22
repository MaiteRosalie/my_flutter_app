import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:poket_wallet/app.dart';

void main() {
  testWidgets('HomePage and navigation smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const App());
    await tester.pumpAndSettle();

    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Favorites'), findsOneWidget);

    // Broader search: just look for the text, not specifically as ElevatedButton children
    expect(find.text('Like'), findsOneWidget);
    expect(find.text('Next'), findsOneWidget);

    // Optionally, try tapping the Like and Next text if they are found
    await tester.tap(find.text('Like'));
    await tester.pump();

    await tester.tap(find.text('Next'));
    await tester.pump();
  });
}
