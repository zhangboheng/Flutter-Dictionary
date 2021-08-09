// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const url =
    'https://www.googleapis.com/books/v1/volumes?q=harry+potter+inauthor:rowling';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Finder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BookFinderPage(),
    );
  }
}

class BookFinderPage extends StatelessWidget {
  const BookFinderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Finder'),
        leading: Icon(Icons.book),
      ),
      body: FutureBuilder(
          future: _fetchPotterBooks(),
          builder: (context, AsyncSnapshot<List<Book>> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                return ListView(
                    children: snapshot.data!.map((b) => BookTile(b)).toList());
              }
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}

class BookTile extends StatelessWidget {
  final Book book;
  const BookTile(this.book);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage:
            NetworkImage(book.thumbnailUrl.replaceAll("http:", "https:")),
      ),
      title: Text(book.title),
      subtitle: Text(book.author),
      onTap: () => _navigateToDetailsPage(book, context),
    );
  }
}

Future<List<Book>> _fetchPotterBooks() async {
  final res = await http.get(Uri.parse(url));
  if (res.statusCode == 200) {
    return _parseBookJson(res.body);
  } else {
    throw Exception('Error: ${res.statusCode}');
  }
}

List<Book> _parseBookJson(String jsonStr) {
  final jsonMap = json.decode(jsonStr);
  final jsonList = (jsonMap['items'] as List);
  return jsonList
      .map((jsonBook) => Book(
            title: jsonBook['volumeInfo']['title'],
            author: (jsonBook['volumeInfo']['authors'] as List).join(', '),
            thumbnailUrl: jsonBook['volumeInfo']['imageLinks']
                ['smallThumbnail'],
          ))
      .toList();
}

class Book {
  final String title;
  final String author;
  final String thumbnailUrl;

  Book({required this.title, required this.author, required this.thumbnailUrl})
      // ignore: unnecessary_null_comparison
      : assert(title != null),
        // ignore: unnecessary_null_comparison
        assert(author != null);
}

void _navigateToDetailsPage(Book book, BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => BookDetailsPage(book),
  ));
}

class BookDetailsPage extends StatelessWidget {
  final Book book;
  const BookDetailsPage(this.book);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(book.title)),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: BookDetails(book),
      ),
    );
  }
}

class BookDetails extends StatelessWidget {
  final Book book;
  const BookDetails(this.book);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(book.thumbnailUrl),
          SizedBox(height: 10.0),
          Text(book.title),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(book.author,
                style: TextStyle(fontWeight: FontWeight.w700)),
          ),
        ],
      ),
    );
  }
}
