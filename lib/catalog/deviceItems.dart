// ignore_for_file: file_names
import 'accordion.dart';
import 'package:flutter/material.dart';

class DeviceItems extends StatefulWidget {
  const DeviceItems({Key? key}) : super(key: key);
  @override
  _DeviceItemsState createState() => _DeviceItemsState();
}

class _DeviceItemsState extends State<DeviceItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Device'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
            child: Column(children: const <Widget>[
          Accordion(
              'MediaQuery',
              'Establishes a subtree in which media queries resolve to the given data.\nMediaQuery({Key? key, required MediaQueryData data, required Widget child})'
                  '\nMediaQuery.removePadding({Key? key, required BuildContext context, bool removeLeft = false, bool removeTop = false, bool removeRight = false, bool removeBottom = false, required Widget child})\n'
                  'MediaQuery.removeViewInsets({Key? key, required BuildContext context, bool removeLeft = false, bool removeTop = false, bool removeRight = false, bool removeBottom = false, required Widget child})\n'
                  'MediaQuery.removeViewPadding({Key? key, required BuildContext context, bool removeLeft = false, bool removeTop = false, bool removeRight = false, bool removeBottom = false, required Widget child})',
              'https://api.flutter.dev/flutter/widgets/MediaQuery-class.html'),
        ])),
      ),
    );
  }
}
