// ignore_for_file: file_names
import 'accordion.dart';
import 'package:flutter/material.dart';

class StyleItems extends StatefulWidget {
  const StyleItems({Key? key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<StyleItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Style'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
            child: Column(children: const <Widget>[
          Accordion(
              'AppBarTheme',
              'Overrides the default values of visual properties for descendant AppBar widgets.\nAppBarTheme({Brightness? brightness, Color? color, Color? backgroundColor, Color? foregroundColor, double? elevation, Color? shadowColor, IconThemeData? iconTheme, IconThemeData? actionsIconTheme, TextTheme? textTheme, bool? centerTitle, double? titleSpacing, TextStyle? toolbarTextStyle, TextStyle? titleTextStyle, SystemUiOverlayStyle? systemOverlayStyle, bool? backwardsCompatibility})',
              'https://api.flutter.dev/flutter/material/AppBarTheme-class.html'),
          Accordion(
              'Visibility',
              'Whether to show or hide a child.\nVisibility({Key? key, required Widget child, Widget replacement, bool visible, bool maintainState, bool maintainAnimation, bool maintainSize, bool maintainSemantics, bool maintainInteractivity})',
              'https://api.flutter.dev/flutter/widgets/Visibility-class.html'),
        ])),
      ),
    );
  }
}
