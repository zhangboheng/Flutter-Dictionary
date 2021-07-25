// ignore_for_file: file_names
import 'accordion.dart';
import 'package:flutter/material.dart';

class ListTileItems extends StatefulWidget {
  const ListTileItems({Key? key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<ListTileItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
            child: Column(children: const <Widget>[
          Accordion(
              'AboutListTile',
              'This widget is often added to an app\'s Drawer. When tapped it shows an about box dialog with showAboutDialog.\nAboutListTile({Key? key, Widget? icon, Widget? child, String? applicationName, String? applicationVersion, Widget? applicationIcon, String? applicationLegalese, List<Widget>? aboutBoxChildren, bool? dense})',
              'https://api.flutter.dev/flutter/material/AboutListTile-class.html'),
          Accordion(
              'ListTile',
              'A single fixed-height row that typically contains some text as well as a leading or trailing icon.\nListTile({Key? key, Widget? leading, Widget? title, Widget? subtitle, Widget? trailing, bool isThreeLine, bool? dense, VisualDensity? visualDensity, ShapeBorder? shape, EdgeInsetsGeometry? contentPadding, bool enabled, GestureTapCallback? onTap, GestureLongPressCallback? onLongPress, MouseCursor? mouseCursor, bool selected, Color? focusColor, Color? hoverColor, FocusNode? focusNode, bool autofocus, Color? tileColor, Color? selectedTileColor, bool? enableFeedback, double? horizontalTitleGap, double? minVerticalPadding, double? minLeadingWidth})',
              'https://api.flutter.dev/flutter/material/ListTile-class.html'),
        ])),
      ),
    );
  }
}
