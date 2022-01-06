import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_test_rgb/main.dart';
import 'package:solid_test_rgb/res/constants.dart';

void main() {
  group('Test Color Page', () {
    testWidgets(': check if correct color is generated',
        (WidgetTester tester) async {
      const testWidget = MyApp();
      await tester.pumpWidget(testWidget);

      final material = find.byType(Material);
      expect(material, findsOneWidget);

      final textWidget = find.text(heyThereString);
      expect(textWidget, findsOneWidget);

      final Material firstItrMaterial = tester.widget(material);
      // Initially the background color should be white
      expect(firstItrMaterial.color, Colors.white);

      // Initially the text color should be black
      final Text text = tester.widget(textWidget);
      expect(text.style!.color, Colors.black);

      // tapped once inside screen
      await tester.tap(material);
      await tester.pump(const Duration(seconds: 1));

      // background color should change, checking if the colors are different
      final Material secondItrMaterial = tester.widget(material);
      expect(firstItrMaterial.color, isNot(secondItrMaterial.color));
    });
  });
}
