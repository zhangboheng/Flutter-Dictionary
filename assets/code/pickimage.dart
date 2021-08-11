// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GalleryAccess(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GalleryAccess extends StatefulWidget {
  const GalleryAccess({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return GalleryAccessState();
  }
}

class GalleryAccessState extends State<GalleryAccess> {
  var galleryFile;

  @override
  Widget build(BuildContext context) {
    //display image selected from gallery
    final picker = ImagePicker();
    // Implementing the image picker
    Future<void> _openImagePicker() async {
      final pickedImage = await picker.pickImage(
        source: ImageSource.gallery,
      );
      if (pickedImage != null) {
        setState(() {
          if (kIsWeb) {
            galleryFile = pickedImage.path.toString();
          } else {
            galleryFile = File(pickedImage.path);
          }
        });
      }
      setState(() {});
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery Access'),
        backgroundColor: Colors.green,
      ),
      body: Builder(
        builder: (BuildContext context) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: Text('Select Image from Gallery'),
                  onPressed: _openImagePicker,
                ),
                SizedBox(
                  height: 200.0,
                  width: 300.0,
                  child: galleryFile == null
                      ? Center(child: Text('Sorry nothing selected!!'))
                      : Center(
                          child: kIsWeb
                              ? Image.network(galleryFile)
                              : Image.file(galleryFile),
                        ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
