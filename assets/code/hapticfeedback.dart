// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: _HapticFeedbackExample(),
    );
  }
}

class _HapticFeedbackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text('Vibrate'),
              onPressed: () {
                HapticFeedback.vibrate();
              },
            ),
            ElevatedButton(
              child: Text('Light Impact'),
              onPressed: () {
                HapticFeedback.lightImpact();
              },
            ),
            ElevatedButton(
              child: Text('Medium Impact'),
              onPressed: () {
                HapticFeedback.mediumImpact();
              },
            ),
            ElevatedButton(
              child: Text('Heavy Impact'),
              onPressed: () {
                HapticFeedback.heavyImpact();
              },
            ),
            ElevatedButton(
              child: Text('Selection Click'),
              onPressed: () {
                HapticFeedback.selectionClick();
              },
            ),
          ],
        ),
      ),
    );
  }
}
