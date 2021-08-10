// ignore_for_file: file_names
import '../widgettools/accordion.dart';
import 'package:flutter/material.dart';

class ColorItems extends StatefulWidget {
  const ColorItems({Key? key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<ColorItems> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool willLeave = false;
        // show the confirm dialog
        await showDialog(
            context: context,
            builder: (_) => AlertDialog(
                  title: Text('Are you sure want to leave?'),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          willLeave = true;
                          Navigator.of(context).pop();
                        },
                        child: Text('Yes')),
                    TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text('No'))
                  ],
                ));
        return willLeave;
      },
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          centerTitle: true,
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
                'ColorFiltered',
                'Applies a ColorFilter to its child.\nColorFiltered({required ColorFilter colorFilter, Widget? child, Key? key})',
                'https://api.flutter.dev/flutter/widgets/ColorFiltered-class.html'),
            Accordion(
                'Gradient',
                'This is an interface that allows LinearGradient, RadialGradient, and SweepGradient classes to be used interchangeably in BoxDecorations.\nGradient({required List<Color> colors, List<double>? stops, GradientTransform? transform})',
                'https://api.flutter.dev/flutter/painting/Gradient-class.html'),
            Accordion(
                'HSLColor',
                'A color represented using alpha, hue, saturation, and lightness.\nHSLColor.fromAHSL(double alpha, double hue, double saturation, double lightness)',
                'https://api.flutter.dev/flutter/painting/HSLColor-class.html'),
            Accordion(
                'HSVColor',
                'A color represented using alpha, hue, saturation, and value.\nHSVColor.fromAHSV(double alpha, double hue, double saturation, double value)',
                'https://api.flutter.dev/flutter/painting/HSVColor-class.html'),
          ])),
        ),
      ),
    );
  }
}
