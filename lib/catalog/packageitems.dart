import 'accordion.dart';
import 'package:flutter/material.dart';

class PackageScreen extends StatefulWidget {
  final String url;
  PackageScreen(this.url);

  @override
  _MyImageScreen createState() => _MyImageScreen(url);
}

class _MyImageScreen extends State<PackageScreen> {
  final String url;
  final _array = {
    'url_launcher': Accordion(
        'url_launcher',
        'Flutter plugin for launching a URL. Supports web, phone, SMS, and email schemes.\nimport \'package:url_launcher/url_launcher.dart\'',
        'https://pub.dev/packages/url_launcher'),
    'carousel_slider': Accordion(
        'carousel_slider',
        'A carousel slider widget.\nimport \'package:carousel_slider/carousel_slider.dart\'',
        'https://pub.dev/packages/carousel_slider'),
    'google_fonts': Accordion(
        'google_fonts',
        'The google_fonts package for Flutter allows you to easily use any of the 977 fonts (and their variants) from fonts.google.com in your Flutter app.\nimport \'package:google_fonts/google_fonts.dart\'',
        'https://pub.dev/packages/google_fonts'),
    'video_player': Accordion(
        'video_player',
        'A Flutter plugin for iOS, Android and Web for playing back video on a Widget surface.\nimport \'package:video_player/video_player.dart\'',
        'https://pub.dev/packages/video_player'),
    'flutter_markdown': Accordion(
        'flutter_markdown',
        'A markdown renderer for Flutter. It supports the original format, but no inline HTML.\nimport \'package:markdown/markdown.dart\'',
        'https://pub.dev/packages/flutter_markdown'),
    'backdrop': Accordion(
        'backdrop',
        'Backdrop implementation in flutter.\nimport \'package:backdrop/backdrop.dart\'',
        'https://pub.dev/packages/backdrop'),
    'convex_bottom_bar': Accordion(
        'convex_bottom_bar',
        'The official BottomAppBar can only display a notch FAB with app bar, sometimes we need a convex FAB. This ConvexAppBar is inspired by BottomAppBar and NotchShape\'s implementation.\nimport \'package:convex_bottom_bar/convex_bottom_bar.dart\'',
        'https://pub.dev/packages/convex_bottom_bar'),
    'fl_chart': Accordion(
        'fl_chart',
        'A powerful Flutter chart library, currently supporting Line Chart, Bar Chart and Pie Chart.\nimport \'package:fl_chart/fl_chart.dart\'',
        'https://pub.dev/packages/fl_chart'),
    'flutter_radar_chart': Accordion(
        'flutter_radar_chart',
        'Animated radar chart for Flutter inspired by The Python Graph Gallery\nimport \'package:flutter_radar_chart/flutter_radar_chart.dart\'',
        'https://pub.dev/packages/flutter_radar_chart'),
    'lottie': Accordion(
        'lottie',
        'Lottie is a mobile library for Android and iOS that parses Adobe After Effects animations exported as json with Bodymovin and renders them natively on mobile!\nimport \'package:package:lottie/lottie.dart\'',
        'https://pub.dev/packages/lottie'),
    'image_picker': Accordion(
        'image_picker',
        'A Flutter plugin for iOS and Android for picking images from the image library, and taking new pictures with the camera.\nimport \'package:image_picker/image_picker.dart\'',
        'https://pub.dev/packages/image_picker'),
    'extended_image': Accordion(
        'extended_image',
        'A powerful official extension library of image, which support placeholder(loading)/ failed state, cache network, zoom pan image, photo view, slide out page, editor(crop,rotate,flip), paint custom etc.\nimport \'package:extended_image/extended_image.dart\'',
        'https://pub.dev/packages/extended_image'),
    'flutter_circle_color_picker': Accordion(
        'flutter_circle_color_picker',
        'A beautiful circle color picker for flutter.\nimport \'package:extended_image/extended_image.dart\'',
        'https://pub.dev/packages/extended_image'),
    'photo_view': Accordion(
        'photo_view',
        'A simple zoomable image/content widget for Flutter.\nimport \'package:photo_view/photo_view.dart\'',
        'https://pub.dev/packages/photo_view'),
    'flash': Accordion(
        'flash',
        'A highly customizable, powerful and easy-to-use alerting library for Flutter.\nimport \'package:flash/flash.dart\'',
        'https://pub.dev/packages/flash'),
    'font_awesome_flutter': Accordion(
        'font_awesome_flutter',
        'The Font Awesome Icon pack available as Flutter Icons. Provides 1500 additional icons to use in your apps.\nimport \'package:font_awesome_flutter/font_awesome_flutter.dart\'',
        'https://pub.dev/packages/font_awesome_flutter'),
    'pie_chart': Accordion(
        'pie_chart',
        'This Flutter package provides a Pie Chart Widget with cool animation.\nimport \'package:pie_chart/pie_chart.dart\'',
        'https://pub.dev/packages/pie_chart'),
  };
  var _foundUsers = <Widget>[];
  var _getKeys = [];
  @override
  void initState() {
    _getKeys = _array.keys.toList();
    _getKeys.sort((a, b) => a.compareTo(b));
    // at the beginning, all users are shown
    _foundUsers = _getKeys.map((item) => _array[item]).toList().cast<Widget>();
    super.initState();
  }

  void _searchItems(String valueKeys) {
    var results = <Widget>[];
    if (valueKeys.isEmpty) {
      _getKeys = _array.keys.toList();
      _getKeys.sort((a, b) => a.compareTo(b));
      // if the search field is empty or only contains white-space, we'll display all users
      results = _getKeys.map((item) => _array[item]).toList().cast<Widget>();
    } else {
      results = _array.keys
          .toList()
          .where((text) => text.toLowerCase().contains(valueKeys.toLowerCase()))
          .toList()
          .map((item) => _array[item])
          .toList()
          .cast<Widget>();
    }
    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  _MyImageScreen(this.url);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          height: 30,
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: TextFormField(
            maxLines: 1,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              icon: Icon(
                Icons.search,
                color: Colors.blue,
              ),
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.grey[700]),
              contentPadding: EdgeInsets.only(bottom: 13.0),
              focusColor: null,
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
            onChanged: (valueKeys) {
              _searchItems(valueKeys);
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: _foundUsers.isNotEmpty
                ? [Image.network(url, width: double.infinity), ..._foundUsers]
                : <Widget>[
                    Container(
                      padding: const EdgeInsets.all(20.0),
                    ),
                    Center(
                        child: Text(
                      'No results found',
                      style: TextStyle(fontSize: 16),
                    )),
                  ]),
      ),
    );
  }
}
