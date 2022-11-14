import 'package:flutter_test/flutter_test.dart';
import 'package:sesion5_2/main.dart';

void main() {
  testWidgets('MyWidget tiene un titulo y un mensaje',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyWidget(title: 'P', message: 'M'));
    final titleFinder = find.text('P');
    final messageFinder = find.text('M');
    // Use el matcher 'findsOneWidget' proporcionado por flutter_test
    // para verificar que nuestros Text Widgets aparezcan exactamente
    // una vez en el Widget tree
    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
}
