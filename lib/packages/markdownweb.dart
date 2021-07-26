// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

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
        body: const WidgetWithCodeView(
          child: MarkdownWidget(),
          sourceFilePath: 'lib/flutter_markdown.dart',
          codeLinkPrefix:
              'https://github.com/zhangboheng/Flutter-Dictionary/tree/main/assets/',
        ));
  }
}

class MarkdownWidget extends StatelessWidget {
  final String _markdownData =
      "# This is [Google link](https://www.google.com)";
  const MarkdownWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
          body: MarkdownBody(
        data: _markdownData,
        onTapLink: (text, url, title) {
          launch(url!);
        },
      ));
}
