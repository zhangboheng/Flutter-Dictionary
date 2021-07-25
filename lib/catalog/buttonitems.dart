// ignore_for_file: file_names
import 'accordion.dart';
import 'package:flutter/material.dart';

class ButtonItems extends StatefulWidget {
  const ButtonItems({Key? key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<ButtonItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
            child: Column(children: const <Widget>[
          Accordion(
              'TextButton',
              'A Material Design "Text Button"\n({Key? key, required VoidCallback? onPressed, VoidCallback? onLongPress, ButtonStyle? style, FocusNode? focusNode, bool autofocus = false, Clip clipBehavior = Clip.none, required Widget child})',
              'https://api.flutter.dev/flutter/material/TextButton-class.html'),
          Accordion(
              'ElevatedButton',
              'A Material Design "elevated button".\n{Key? key, required VoidCallback? onPressed, VoidCallback? onLongPress, ButtonStyle? style, FocusNode? focusNode, bool autofocus = false, Clip clipBehavior = Clip.none, required Widget? child})',
              'https://api.flutter.dev/flutter/material/ElevatedButton-class.html'),
          Accordion(
              'IconButton',
              'A material design icon button.\n({Key? key, double iconSize, VisualDensity? visualDensity, EdgeInsetsGeometry padding, AlignmentGeometry alignment, double? splashRadius, Color? color, Color? focusColor, Color? hoverColor, Color? highlightColor, Color? splashColor, Color? disabledColor, required VoidCallback? onPressed, MouseCursor mouseCursor, FocusNode? focusNode, bool autofocus, String? tooltip, bool enableFeedback, BoxConstraints? constraints, required Widget icon})',
              'https://api.flutter.dev/flutter/material/IconButton-class.html'),
          Accordion(
              'OutlinedButton',
              'A Material Design "Outlined Button"; essentially a TextButton with an outlined border.\n({Key? key, required VoidCallback? onPressed, VoidCallback? onLongPress, ButtonStyle? style, FocusNode? focusNode, bool autofocus = false, Clip clipBehavior = Clip.none, required Widget child})',
              'https://api.flutter.dev/flutter/material/OutlinedButton-class.html'),
          Accordion(
              'CupertinoButton',
              'An iOS-style button.\n({Key? key, required Widget child, EdgeInsetsGeometry? padding, Color? color, Color disabledColor, double? minSize, double? pressedOpacity, BorderRadius? borderRadius, AlignmentGeometry alignment, required VoidCallback? onPressed})',
              'https://api.flutter.dev/flutter/cupertino/CupertinoButton-class.html'),
        ])),
      ),
    );
  }
}
