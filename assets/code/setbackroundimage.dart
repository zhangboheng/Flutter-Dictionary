// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: BackgroundImageExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BackgroundImageExample extends StatelessWidget {
  static const String imageUrl =
      'https://mocah.org/thumbs/268085-wallpaper-1080-2400.jpg';
  static const Widget appName = Text(
    'Flutter Demo',
    style: TextStyle(
        color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold),
  );
  static const Widget textField = TextField(
      decoration: InputDecoration(
    labelText: 'Name',
    hintText: 'Enter your name',
    hintStyle: TextStyle(color: Colors.white),
  ));

  BackgroundImageExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Flutter Demo'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: NetworkImage(imageUrl),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            appName,
            textField,
          ],
        ),
      ),
    );
  }
}
