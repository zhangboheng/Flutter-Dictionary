// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Example',
      home: AnimatedListExample(),
    );
  }
}

class AnimatedListExample extends StatefulWidget {
  const AnimatedListExample({Key? key}) : super(key: key);

  @override
  AnimatedListExampleState createState() => AnimatedListExampleState();
}

class AnimatedListExampleState extends State<AnimatedListExample> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();

  final List<String> _data = [
    WordPair.random().toString(),
    WordPair.random().toString(),
    WordPair.random().toString(),
    WordPair.random().toString(),
    WordPair.random().toString(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated List'),
        backgroundColor: Colors.blueAccent,
      ),
      persistentFooterButtons: <Widget>[
        ElevatedButton(
          child: Text(
            'Add an item',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          onPressed: () {
            _addAnItem();
          },
        ),
        ElevatedButton(
          child: Text(
            'Remove last',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          onPressed: () {
            _removeLastItem();
          },
        ),
        ElevatedButton(
          child: Text(
            'Remove all',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          onPressed: () {
            _removeAllItems();
          },
        ),
        ElevatedButton(
          child: Text(
            'Random Sort',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          onPressed: () {
            _sortItem();
          },
        ),
      ],
      body: AnimatedList(
        key: _listKey,
        initialItemCount: _data.length,
        itemBuilder: (context, index, animation) =>
            _buildItem(context, _data[index], animation),
      ),
    );
  }

  Widget _buildItem(
      BuildContext context, String item, Animation<double> animation) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: SizeTransition(
        sizeFactor: animation,
        axis: Axis.vertical,
        child: SizedBox(
          height: 50.0,
          child: Card(
            child: Center(
              child: Text(item, style: TextStyle(fontSize: 20)),
            ),
          ),
        ),
      ),
    );
  }

//Rondom list sort
  List shuffle(List items) {
    var random = Random();

    // Go through all elements.
    for (var i = items.length - 1; i > 0; i--) {
      // Pick a pseudorandom number according to the list length
      var n = random.nextInt(i + 1);

      var temp = items[i];
      items[i] = items[n];
      items[n] = temp;
    }

    return items;
  }

  void _sortItem() {
    _listKey.currentState?.setState(() {
      shuffle(_data);
    });
  }

  void _addAnItem() {
    _data.insert(0, WordPair.random().toString());
    _listKey.currentState?.insertItem(0);
  }

  void _removeLastItem() {
    String itemToRemove = _data[0];

    _listKey.currentState?.removeItem(
      0,
      (BuildContext context, Animation<double> animation) =>
          _buildItem(context, itemToRemove, animation),
      duration: const Duration(milliseconds: 250),
    );

    _data.removeAt(_data.length - 1);
  }

  void _removeAllItems() {
    final int itemCount = _data.length;

    for (var i = 0; i < itemCount; i++) {
      String itemToRemove = _data[0];
      _listKey.currentState?.removeItem(
        0,
        (BuildContext context, Animation<double> animation) =>
            _buildItem(context, itemToRemove, animation),
        duration: const Duration(milliseconds: 250),
      );

      _data.removeAt(0);
    }
  }
}