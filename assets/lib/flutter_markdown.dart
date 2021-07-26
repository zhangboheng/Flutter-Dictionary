// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MarkdownWidget extends StatelessWidget {
  final String _markdownData =
      "# This is [Google link](https://www.google.com)";
  const MarkdownWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
          body: MarkdownBody(
        selectable: true,
        data: _markdownData,
        onTapLink: (text, url, title) {
          launch(url!);
        },
      ));
}
