// ignore_for_file: file_names
import 'package:flutter/material.dart';

class LauncherWeb extends StatefulWidget {
  const LauncherWeb({Key? key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<LauncherWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('url_launcher'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
              ],
            )),
      ),
    );
  }
}
