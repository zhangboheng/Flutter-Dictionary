// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: _CircularProgressIndicatorApp(),
    );
  }
}

class _CircularProgressIndicatorApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CircularProgressIndicatorAppState();
  }
}

class _CircularProgressIndicatorAppState
    extends State<_CircularProgressIndicatorApp> {
  double _progress = 0;

  void startTimer() {
    Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer) => setState(
        () {
          if (_progress == 1) {
            timer.cancel();
          } else {
            _progress += 0.2;
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(
                strokeWidth: 10,
                backgroundColor: Colors.cyanAccent,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                value: _progress,
              ),
              ElevatedButton(
                child: Text('Start timer'),
                onPressed: () {
                  setState(() {
                    _progress = 0;
                  });
                  startTimer();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
