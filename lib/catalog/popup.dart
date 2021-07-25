// ignore_for_file: file_names
import 'accordion.dart';
import 'package:flutter/material.dart';

class Popup extends StatefulWidget {
  const Popup({Key? key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Popup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popup'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
            child: Column(children: const <Widget>[
          Accordion(
              'AlertDialog',
              'A material design alert dialog.\n({Key? key, Widget? title, EdgeInsetsGeometry? titlePadding, TextStyle? titleTextStyle, Widget? content, EdgeInsetsGeometry contentPadding, TextStyle? contentTextStyle, List<Widget>? actions, EdgeInsetsGeometry actionsPadding, VerticalDirection? actionsOverflowDirection, double? actionsOverflowButtonSpacing, EdgeInsetsGeometry? buttonPadding, Color? backgroundColor, double? elevation, String? semanticLabel, EdgeInsets insetPadding, Clip clipBehavior, ShapeBorder? shape, bool scrollable})',
              'https://api.flutter.dev/flutter/material/AlertDialog-class.html'),
        ])),
      ),
    );
  }
}
