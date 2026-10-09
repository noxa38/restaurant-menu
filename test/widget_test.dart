import 'package:flutter_test/flutter_test.dart';
import 'package:louis_faure_restaurant/main.dart';

void main() {
  testWidgets('Restaurant menu smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Menu du Restaurant'), findsOneWidget);
  });
}
