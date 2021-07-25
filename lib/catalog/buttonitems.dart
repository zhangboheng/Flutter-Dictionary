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
              'ActionChip',
              'A material design action chip.\nActionChip({Key? key, Widget? avatar, required Widget label, TextStyle? labelStyle, EdgeInsetsGeometry? labelPadding, required VoidCallback onPressed, double? pressElevation, String? tooltip, BorderSide? side, OutlinedBorder? shape, Clip clipBehavior, FocusNode? focusNode, bool autofocus, Color? backgroundColor, EdgeInsetsGeometry? padding, VisualDensity? visualDensity, MaterialTapTargetSize? materialTapTargetSize, double? elevation, Color? shadowColor})',
              'https://api.flutter.dev/flutter/material/ActionChip-class.html'),
          Accordion(
              'CheckBox',
              'A material design checkbox.\nCheckbox({Key? key, required bool? value, bool tristate, required ValueChanged<bool?>? onChanged, MouseCursor? mouseCursor, Color? activeColor, MaterialStateProperty<Color?>? fillColor, Color? checkColor, Color? focusColor, Color? hoverColor, MaterialStateProperty<Color?>? overlayColor, double? splashRadius, MaterialTapTargetSize? materialTapTargetSize, VisualDensity? visualDensity, FocusNode? focusNode, bool autofocus, OutlinedBorder? shape, BorderSide? side})',
              'https://api.flutter.dev/flutter/material/Checkbox-class.html'),
          Accordion(
              'CupertinoButton',
              'An iOS-style button.\n({Key? key, required Widget child, EdgeInsetsGeometry? padding, Color? color, Color disabledColor, double? minSize, double? pressedOpacity, BorderRadius? borderRadius, AlignmentGeometry alignment, required VoidCallback? onPressed})',
              'https://api.flutter.dev/flutter/cupertino/CupertinoButton-class.html'),
          Accordion(
              'ElevatedButton',
              'A Material Design "elevated button".\n{Key? key, required VoidCallback? onPressed, VoidCallback? onLongPress, ButtonStyle? style, FocusNode? focusNode, bool autofocus = false, Clip clipBehavior = Clip.none, required Widget? child})',
              'https://api.flutter.dev/flutter/material/ElevatedButton-class.html'),
          Accordion(
              'FloatingActionButton',
              'A material design floating action button.\nFloatingActionButton({Key? key, Widget? child, String? tooltip, Color? foregroundColor, Color? backgroundColor, Color? focusColor, Color? hoverColor, Color? splashColor, Object? heroTag, double? elevation, double? focusElevation, double? hoverElevation, double? highlightElevation, double? disabledElevation, required VoidCallback? onPressed, MouseCursor? mouseCursor, bool mini, ShapeBorder? shape, Clip clipBehavior, FocusNode? focusNode, bool autofocus, MaterialTapTargetSize? materialTapTargetSize, bool isExtended})\nFloatingActionButton.extended({Key? key, String? tooltip, Color? foregroundColor, Color? backgroundColor, Color? focusColor, Color? hoverColor, Object? heroTag, double? elevation, double? focusElevation, double? hoverElevation, Color? splashColor, double? highlightElevation, double? disabledElevation, required VoidCallback? onPressed, MouseCursor? mouseCursor, ShapeBorder? shape, bool isExtended, MaterialTapTargetSize? materialTapTargetSize, Clip clipBehavior, FocusNode? focusNode, bool autofocus, Widget? icon, required Widget label})',
              'https://api.flutter.dev/flutter/material/FloatingActionButton-class.html'),
          Accordion(
              'IconButton',
              'A material design icon button.\n({Key? key, double iconSize, VisualDensity? visualDensity, EdgeInsetsGeometry padding, AlignmentGeometry alignment, double? splashRadius, Color? color, Color? focusColor, Color? hoverColor, Color? highlightColor, Color? splashColor, Color? disabledColor, required VoidCallback? onPressed, MouseCursor mouseCursor, FocusNode? focusNode, bool autofocus, String? tooltip, bool enableFeedback, BoxConstraints? constraints, required Widget icon})',
              'https://api.flutter.dev/flutter/material/IconButton-class.html'),
          Accordion(
              'OutlinedButton',
              'A Material Design "Outlined Button"; essentially a TextButton with an outlined border.\n({Key? key, required VoidCallback? onPressed, VoidCallback? onLongPress, ButtonStyle? style, FocusNode? focusNode, bool autofocus = false, Clip clipBehavior = Clip.none, required Widget child})',
              'https://api.flutter.dev/flutter/material/OutlinedButton-class.html'),
          Accordion(
              'Slider',
              'A Material Design slider.\nSlider({Key? key, required double value, required ValueChanged<double>? onChanged, ValueChanged<double>? onChangeStart, ValueChanged<double>? onChangeEnd, double min, double max, int? divisions, String? label, Color? activeColor, Color? inactiveColor, MouseCursor? mouseCursor, SemanticFormatterCallback? semanticFormatterCallback, FocusNode? focusNode, bool autofocus})',
              'https://api.flutter.dev/flutter/material/Slider-class.html'),
          Accordion(
              'SwitchListTile',
              'A ListTile with a Switch. In other words, a switch with a label.\nSwitchListTile({Key? key, required bool value, required ValueChanged<bool>? onChanged, Color? tileColor, Color? activeColor, Color? activeTrackColor, Color? inactiveThumbColor, Color? inactiveTrackColor, ImageProvider<Object>? activeThumbImage, ImageProvider<Object>? inactiveThumbImage, Widget? title, Widget? subtitle, bool isThreeLine, bool? dense, EdgeInsetsGeometry? contentPadding, Widget? secondary, bool selected, bool autofocus, ListTileControlAffinity controlAffinity, ShapeBorder? shape, Color? selectedTileColor})',
              'https://api.flutter.dev/flutter/material/SwitchListTile-class.html'),
          Accordion(
              'TextButton',
              'A Material Design "Text Button"\n({Key? key, required VoidCallback? onPressed, VoidCallback? onLongPress, ButtonStyle? style, FocusNode? focusNode, bool autofocus = false, Clip clipBehavior = Clip.none, required Widget child})',
              'https://api.flutter.dev/flutter/material/TextButton-class.html'),
        ])),
      ),
    );
  }
}
