import 'package:flutter/material.dart';
import 'package:solid_test_rgb/res/constants.dart';
import 'package:solid_test_rgb/utils/color_helper.dart';

/// Page for displaying the RGB colors
class ColorPage extends StatefulWidget {
  const ColorPage({Key? key}) : super(key: key);

  @override
  State<ColorPage> createState() => _ColorPageState();
}

class _ColorPageState extends State<ColorPage> {
  // initial colors
  Color backgroundColor = Colors.white;
  Color textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          // retrieve the generated colors
          final colorsSet = ColorHelper.generate();
          // set the newly generated colors
          backgroundColor = colorsSet.first;
          textColor = colorsSet.last;
        });
      },
      child: Scaffold(
        backgroundColor: backgroundColor, // using background color
        body: Center(
          child: Text(
            heyThereString,
            style: TextStyle(
              color: textColor, // using text color
              fontSize: 24.0,
            ),
          ),
        ),
      ),
    );
  }
}
