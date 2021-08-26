// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//Example One
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Tutorial',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Tutorial'),
          backgroundColor: Colors.teal,
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarColor: Colors.blue),
        ),
        body: const Center(
          child: Text('OKay!', style: TextStyle(fontSize: 36)),
        ),
      ),
    );
  }
}

//Example Two
/*
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Tutorial',
      initialRoute: '/one',
      routes: {
        '/one': (context) => PageOne(),
        '/two': (context) => PageTwo(),
      },
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.yellow,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Flutter Demo - One',
                style: TextStyle(color: Colors.black)),
            OutlinedButton(
              child: const Text('Go to PageTwo'),
              onPressed: () {
                Navigator.popAndPushNamed(context, "/two");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.purple.withOpacity(0.3),
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ));
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Flutter Demo - Two',
                style: TextStyle(color: Colors.black)),
            OutlinedButton(
              child: const Text('Go to PageOne'),
              onPressed: () {
                Navigator.popAndPushNamed(context, "/one");
              },
            ),
          ],
        ),
      ),
    );
  }
}
*/

//Example Three
/*
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Woolha.com Flutter Tutorial',
      initialRoute: '/one',
      routes: {
        '/one': (context) => PageOne(),
        '/two': (context) => PageTwo(),
      },
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      // Reset SystemUiOverlayStyle for PageOne.
      // If this is not set, the status bar will use the style applied from another route.
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.yellow,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: SizedBox.expand(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Flutter Demo - One',
                  style: TextStyle(color: Colors.black)),
              OutlinedButton(
                child: const Text('Go to PageTwo'),
                onPressed: () {
                  Navigator.popAndPushNamed(context, "/two");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      // Reset SystemUiOverlayStyle for PageTwo.
      // If this is not set, the status bar will use the style applied from another route.
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.red.withOpacity(0.3),
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: SizedBox.expand(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Woolha.com - Two',
                  style: TextStyle(color: Colors.black)),
              OutlinedButton(
                child: const Text('Go to PageOne'),
                onPressed: () {
                  Navigator.popAndPushNamed(context, "/one");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/