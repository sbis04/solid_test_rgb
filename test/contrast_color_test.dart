import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_test_rgb/utils/color_helper.dart';

void main() {
  test('Contrast color test', () {
    final colorsSet = ColorHelper.generate();

    final primaryColor = colorsSet.first;
    final contrastColor = colorsSet.last;

    final testContrastColor = (primaryColor.red * 0.299 +
                primaryColor.green * 0.587 +
                primaryColor.blue * 0.114) >
            186
        ? Colors.black
        : Colors.white;

    expect(contrastColor, testContrastColor);
  });
}
