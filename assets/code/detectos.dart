// ignore_for_file: prefer_const_constructors

import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String str = 'Click!';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Detecting System'),
          ),
          body: Center(
              child: Column(children: <Widget>[
            Container(
              width: 200.0,
              height: 50.0,
              margin: EdgeInsets.all(25),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
                child: Text(
                  str,
                  style:
                      TextStyle(fontSize: 20.0, color: Colors.yellow.shade200),
                ),
                onPressed: () {
                  setState(() {
                    if (kIsWeb) {
                      str = 'Web-specific code'; // running on the web!
                    } else {
                      if (Platform.isAndroid) {
                        str = 'Android-specific code';
                      } else if (Platform.isIOS) {
                        str = 'IOS-specific code'; // iOS-specific code
                      } else if (Platform.isFuchsia) {
                        str = 'Fuchsia-specific code';
                      } else if (Platform.isLinux) {
                        str = 'Linux-specific code';
                      } else if (Platform.isMacOS) {
                        str = 'MacOS-specific code';
                      } else if (Platform.isWindows) {
                        str = 'Windows-specific code';
                      } else {
                        str = 'Unkown-specific code';
                      }
                    }
                  });
                },
              ),
            ),
          ]))),
    );
  }
}