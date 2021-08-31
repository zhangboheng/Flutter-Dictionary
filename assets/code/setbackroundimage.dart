import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
  static const Widget appName = const Text(
    'Flutter Demo',
    style: const TextStyle(
        color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold),
  );
  static const Widget textField = const TextField(
      decoration: InputDecoration(
    labelText: 'Name',
    hintText: 'Enter your name',
    hintStyle: const TextStyle(color: Colors.white),
  ));

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
          children: [
            appName,
            textField,
          ],
        ),
      ),
    );
  }
}
