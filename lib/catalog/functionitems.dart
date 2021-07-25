// ignore_for_file: file_names
import 'accordion.dart';
import 'package:flutter/material.dart';

class FunctionItems extends StatefulWidget {
  const FunctionItems({Key? key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<FunctionItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Functions'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
            child: Column(children: const <Widget>[
          Accordion(
              'AbsorbPointer',
              'A widget that absorbs pointers during hit testing.\nAbsorbPointer({Key? key, bool absorbing, Widget? child, bool? ignoringSemantics})',
              'https://api.flutter.dev/flutter/widgets/AbsorbPointer-class.html'),
          Accordion(
              'IgnorePointer',
              'A widget that is invisible during hit testing.\nIgnorePointer({Key? key, bool ignoring, bool? ignoringSemantics, Widget? child})',
              'https://api.flutter.dev/flutter/widgets/IgnorePointer-class.html'),
        ])),
      ),
    );
  }
}
