import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:poket_wallet/app.dart';

void main() {
  testWidgets('HomePage and navigation smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(App());

    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Favorites'), findsOneWidget);

    expect(find.widgetWithText(ElevatedButton, 'Like'), findsOneWidget);
    expect(find.widgetWithText(ElevatedButton, 'Next'), findsOneWidget);

    await tester.tap(find.widgetWithText(ElevatedButton, 'Like'));
    await tester.pump();

    await tester.tap(find.widgetWithText(ElevatedButton, 'Next'));
    await tester.pump();
  });
}
