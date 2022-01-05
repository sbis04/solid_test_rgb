import 'dart:math';

import 'package:flutter/material.dart';

// The red, green, and blue use 8 bits each, having
// integer values from 0 to 255.
// So, there are 256*256*256=16777216 possibilities

/// Helper for generating the random color
class ColorHelper {
  static Set<Color> generate() {
    var totalColorValue = 256;

    // nextInt generates from 0 to max -1
    // here, using max value as 256
    // to generate value between 0 to 255
    var red = Random().nextInt(totalColorValue);
    var green = Random().nextInt(totalColorValue);
    var blue = Random().nextInt(totalColorValue);

    // Using ARBG:
    // A -> alpha, sets the opacity -> used 255 to keep it fully opaque
    // R -> red, randomly generated
    // G -> green, randomly generated
    // B -> blue, randomly generated
    final backgroundColor = Color.fromARGB(255, red, green, blue);

    // generate contrasting text color
    // only using black and white, as
    // it's looks prominent to human eye in most cases
    // https://stackoverflow.com/a/3943023/11910277
    final textColor = (red * 0.299 + green * 0.587 + blue * 0.114) > 186
        ? Colors.black
        : Colors.white;

    return {backgroundColor, textColor};
  }
}
