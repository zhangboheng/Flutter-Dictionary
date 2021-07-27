// ignore_for_file: file_names
import 'accordion.dart';
import 'package:flutter/material.dart';

class AnimationItems extends StatefulWidget {
  const AnimationItems({Key? key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<AnimationItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
            child: Column(children: const <Widget>[
          Accordion(
              'CircularProgressIndicator',
              'A material design circular progress indicator, which spins to indicate that the application is busy.\nCircularProgressIndicator({Key? key, double? value, Color? backgroundColor, Color? color, Animation<Color?>? valueColor, double strokeWidth, String? semanticsLabel, String? semanticsValue})',
              'https://api.flutter.dev/flutter/material/CircularProgressIndicator-class.html'),
          Accordion(
              'LinearProgressIndicator',
              'A material design linear progress indicator, also known as a progress bar.\nLinearProgressIndicator({Key? key, double? value, Color? backgroundColor, Color? color, Animation<Color?>? valueColor, double? minHeight, String? semanticsLabel, String? semanticsValue})',
              'https://api.flutter.dev/flutter/material/LinearProgressIndicator-class.html'),
        ])),
      ),
    );
  }
}
