// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

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
  var _getPath;
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  //display image selected from gallery
  final picker = ImagePicker();
  // Implementing the image picker
  Future<void> _openImagePicker() async {
    final pickedVideo = await picker.pickVideo(
      source: ImageSource.gallery,
    );
    if (pickedVideo != null) {
      setState(() {
        if (kIsWeb) {
          _getPath = pickedVideo.path.toString();
        } else {
          _getPath = File(pickedVideo.path);
        }
      });
    }
  }

  playVideo(path) {
    _controller = VideoPlayerController.network(path,
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true));
    _initializeVideoPlayerFuture = _controller.initialize().then((_) {
      setState(() {
        _controller.seekTo(Duration(seconds: 3));
        _controller.play();
      });
    });
  }

  @override
  void initState() {
    // Initialize the controller and store the Future for later use.
    super.initState();
  }

  @override
  void dispose() {
    // // Use the controller to loop the video.
    // _controller.setLooping(true);
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                  child: Center(
                    child: kIsWeb
                        ? VideoPlayer(playVideo(_getPath))
                        : VideoPlayer(_controller),
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
