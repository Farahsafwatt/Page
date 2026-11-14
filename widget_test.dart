import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_navigation_app/main.dart';

void main() {
  testWidgets('Navigates Home -> About -> Contact', (tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Home Page'), findsOneWidget);

    await tester.tap(find.text('Go to About'));
    await tester.pumpAndSettle();
    expect(find.text('About Page'), findsOneWidget);

    await tester.tap(find.text('Go to Contact'));
    await tester.pumpAndSettle();
    expect(find.text('Contact Page'), findsOneWidget);
  });
}
