// ignore_for_file: file_names
import 'package:flutter/material.dart';

class MarkdownWeb extends StatefulWidget {
  const MarkdownWeb({Key? key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MarkdownWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter_markdown'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const <Widget>[],
            )),
      ),
    );
  }
}
