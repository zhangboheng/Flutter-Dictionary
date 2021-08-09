// main.dart
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Remove the debug banner
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  // Generate some dummy data
  final List<Map<String, dynamic>> _items = List.generate(
      15,
      (index) =>
          {"id": index, "title": "Item $index", "subtitle": "Subtitle $index"});

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: ListView(
            children: ListTile.divideTiles(
                color: Colors.deepPurple,
                tiles: _items.map((item) => ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.amber,
                        child: Text(item['id'].toString()),
                      ),
                      title: Text(item['title']),
                      subtitle: Text(item['subtitle']),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.favorite)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.delete)),
                        ],
                      ),
                    ))).toList()));
  }
}
