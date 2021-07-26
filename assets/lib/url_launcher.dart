import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: _SizedBoxExample(),
    );
  }
}

class _SizedBoxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
      ),
      body: const Center(
        child: ElevatedButton(
          onPressed: _launchURL,
          child: Text('Open Google'),
        ),
      ),
    );
  }
}

_launchURL() async {
  final Uri uri = Uri(
    scheme: 'https',
    path: 'www.google.com',
    queryParameters: {'name': 'google dot com', 'about': 'Flutter Dart'},
  );
  const url = "https://www.google.com/";
  if (await canLaunch(url)) {
    await launch(uri.toString());
  } else {
    print('Could not launch $url');
  }
}
