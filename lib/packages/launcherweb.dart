// ignore_for_file: file_names, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

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
        body: WidgetWithCodeView(
          child: SomeWidget(),
          sourceFilePath: 'lib/url_launcher.dart',
          codeLinkPrefix: 'https://google.com?q=',
        ));
  }
}

class SomeWidget extends StatelessWidget {
  const SomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: _launchURL,
            child: Text('Open Google'),
          ),
        ),
      );
}

_launchURL() async {
  const url = "https://www.google.com/";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    print('Could not launch $url');
  }
}
