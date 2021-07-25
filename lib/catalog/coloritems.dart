// ignore_for_file: file_names
import 'accordion.dart';
import 'package:flutter/material.dart';

class ColorItems extends StatefulWidget {
  const ColorItems({Key? key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<ColorItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
            child: Column(children: const <Widget>[
          Accordion(
              'Color',
              'An immutable 32 bit color value in ARGB format.\nColor(0xFF42A5F5);\nColor.fromARGB(0xFF, 0x42, 0xA5, 0xF5);\nColor.fromARGB(255, 66, 165, 245);\nColor.fromRGBO(66, 165, 245, 1.0);',
              'https://api.flutter.dev/flutter/dart-ui/Color-class.html'),
          Accordion(
              'Gradient',
              'This is an interface that allows LinearGradient, RadialGradient, and SweepGradient classes to be used interchangeably in BoxDecorations.\nGradient({required List<Color> colors, List<double>? stops, GradientTransform? transform})',
              'https://api.flutter.dev/flutter/painting/Gradient-class.html'),
        ])),
      ),
    );
  }
}
