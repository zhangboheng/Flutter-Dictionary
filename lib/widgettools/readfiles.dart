// main.dart
// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:widget_with_codeview/source_code_view.dart';

class Readfiles extends StatefulWidget {
  final String title;
  final String text;
  const Readfiles(this.title, this.text);

  @override
  _ReadfilesState createState() => _ReadfilesState();
}

class _ReadfilesState extends State<Readfiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: SourceCodeView(
          filePath: widget.text,
        ),
      ),
    );
  }
}
