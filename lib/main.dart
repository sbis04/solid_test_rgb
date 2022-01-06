import 'package:flutter/material.dart';

import 'screens/color_page.dart';

/// Starting point of the app
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Color Test',
      home: ColorPage(),
    );
  }
}
