import 'package:flutter_test/flutter_test.dart';
import 'package:louis_faure_restaurant/main.dart';

void main() {
  testWidgets('Restaurant menu smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const RestaurantApp());

    // Verify that the AppBar title is present.
    expect(find.text('Menu du Restaurant Le Gourmet'), findsOneWidget);

    // Verify that categories are present (e.g. Formules)
    expect(find.text('Formules'), findsOneWidget);
  });
}
