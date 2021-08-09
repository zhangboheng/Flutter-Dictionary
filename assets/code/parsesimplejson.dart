// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Album> fetchAlbum() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));

// Appropriate action depending upon the
// server response
  if (response.statusCode == 200) {
    return Album.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}

class Album {
  final int userId;
  final int id;
  final String title;
  final String body;

  Album(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetching Data',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.body);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
