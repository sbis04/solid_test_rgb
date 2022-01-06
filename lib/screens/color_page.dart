import 'package:flutter/material.dart';
import 'package:solid_test_rgb/res/constants.dart';
import 'package:solid_test_rgb/utils/color_helper.dart';

class ColorPage extends StatefulWidget {
  const ColorPage({Key? key}) : super(key: key);

  @override
  State<ColorPage> createState() => _ColorPageState();
}

class _ColorPageState extends State<ColorPage> {
  Color backgroundColor = Colors.white;
  Color textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          final colorsSet = ColorHelper.generate();
          backgroundColor = colorsSet.first;
          textColor = colorsSet.last;
        });
      },
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: Text(
            heyThereString,
            style: TextStyle(
              color: textColor,
              fontSize: 24.0,
            ),
          ),
        ),
      ),
    );
  }
}
