// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List data = [
    {
      "title": "Image 1",
      "url":
          "https://images.pexels.com/photos/1525043/pexels-photo-1525043.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    },
    {
      "title": "Image 2",
      "url":
          "https://images.pexels.com/photos/1525042/pexels-photo-1525042.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    },
    {
      "title": "Image 3",
      "url":
          "https://images.pexels.com/photos/1525041/pexels-photo-1525041.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    },
    {
      "title": "Image 4",
      "url":
          "https://images.pexels.com/photos/1525044/pexels-photo-1525044.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    },
    {
      "title": "Image 5",
      "url":
          "https://images.pexels.com/photos/1525045/pexels-photo-1525045.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    },
    {
      "title": "Image 6",
      "url":
          "https://images.pexels.com/photos/1525046/pexels-photo-1525046.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 2),
              autoPlayAnimationDuration: Duration(milliseconds: 400),
              height: 300,
            ),
            items: data.map((item) {
              return GridTile(
                child: Image.network(item["url"], fit: BoxFit.cover),
                footer: Container(
                    padding: EdgeInsets.all(15),
                    color: Colors.black54,
                    child: Text(
                      item["title"],
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.right,
                    )),
              );
            }).toList(),
          ),
          SizedBox(height: 30),
          Text(
            'Other Content',
            style: TextStyle(
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}