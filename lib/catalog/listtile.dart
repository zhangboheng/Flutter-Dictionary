// ignore_for_file: file_names, prefer_const_constructors
import '../widgettools/accordion.dart';
import 'package:flutter/material.dart';

class ListTileItems extends StatefulWidget {
  const ListTileItems({Key? key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<ListTileItems> {
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
                'AnimatedList',
                'A scrolling container that animates items when they are inserted or removed.\nAnimatedList({Key? key, required AnimatedListItemBuilder itemBuilder, int initialItemCount, Axis scrollDirection, bool reverse, ScrollController? controller, bool? primary, ScrollPhysics? physics, bool shrinkWrap, EdgeInsetsGeometry? padding, Clip clipBehavior})',
                'https://api.flutter.dev/flutter/widgets/AnimatedList-class.html'),
            Accordion(
                'CheckboxListTile',
                'A ListTile with a Checkbox. In other words, a checkbox with a label.\nCheckboxListTile({Key? key, required bool? value, required ValueChanged<bool?>? onChanged, Color? activeColor, Color? checkColor, Color? tileColor, Widget? title, Widget? subtitle, bool isThreeLine, bool? dense, Widget? secondary, bool selected, ListTileControlAffinity controlAffinity, bool autofocus, EdgeInsetsGeometry? contentPadding, bool tristate, ShapeBorder? shape, Color? selectedTileColor})',
                'https://api.flutter.dev/flutter/material/CheckboxListTile-class.html'),
            Accordion(
                'ListTile',
                'A single fixed-height row that typically contains some text as well as a leading or trailing icon.\nListTile({Key? key, Widget? leading, Widget? title, Widget? subtitle, Widget? trailing, bool isThreeLine, bool? dense, VisualDensity? visualDensity, ShapeBorder? shape, EdgeInsetsGeometry? contentPadding, bool enabled, GestureTapCallback? onTap, GestureLongPressCallback? onLongPress, MouseCursor? mouseCursor, bool selected, Color? focusColor, Color? hoverColor, FocusNode? focusNode, bool autofocus, Color? tileColor, Color? selectedTileColor, bool? enableFeedback, double? horizontalTitleGap, double? minVerticalPadding, double? minLeadingWidth})',
                'https://api.flutter.dev/flutter/material/ListTile-class.html'),
            Accordion(
                'RadioListTile',
                'A ListTile with a Radio. In other words, a radio button with a label.\nRadioListTile({Key? key, required T value, required T? groupValue, required ValueChanged<T?>? onChanged, bool toggleable, Color? activeColor, Widget? title, Widget? subtitle, bool isThreeLine, bool? dense, Widget? secondary, bool selected, ListTileControlAffinity controlAffinity, bool autofocus, EdgeInsetsGeometry? contentPadding, ShapeBorder? shape, Color? tileColor, Color? selectedTileColor})',
                'https://api.flutter.dev/flutter/material/RadioListTile-class.html'),
            Accordion(
                'SliverList',
                'A sliver that places multiple box children in a linear array along the main axis.\nSliverList({Key? key, required SliverChildDelegate delegate})',
                'https://api.flutter.dev/flutter/widgets/SliverList-class.html'),
            Accordion(
                'ValueListenableBuilder',
                'A widget whose content stays synced with a ValueListenable.\nValueListenableBuilder({Key? key, required ValueListenable<T> valueListenable, required ValueWidgetBuilder<T> builder, Widget? child})',
                'https://api.flutter.dev/flutter/widgets/ValueListenableBuilder-class.html'),
          ])),
        ),
      ),
    );
  }
}
