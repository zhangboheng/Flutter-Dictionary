// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Woolha.com Flutter Tutorial',
      home: _ClipboardExample(),
    );
  }
}

class _ClipboardExample extends StatefulWidget {
  @override
  _ClipboardExampleState createState() => _ClipboardExampleState();
}

class _ClipboardExampleState extends State<_ClipboardExample> {
  String _textValue = '';

  void _setClipboard() async {
    ClipboardData data = const ClipboardData(text: 'My Text');
    await Clipboard.setData(data);
  }

  void _getClipboard() async {
    ClipboardData? data = await Clipboard.getData(Clipboard.kTextPlain);
    setState(() {
      _textValue = data!.text.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Set Data'),
              onPressed: () {
                _setClipboard();
              },
            ),
            ElevatedButton(
              child: Text('Get Data'),
              onPressed: () {
                _getClipboard();
              },
            ),
            Text('Clipboard Value : $_textValue'),
          ],
        ),
      ),
    );
  }
}
