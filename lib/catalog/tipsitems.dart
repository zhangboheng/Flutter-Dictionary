// ignore_for_file: no_logic_in_create_state, use_key_in_widget_constructors, prefer_const_constructors

import '../widgettools/viewcode.dart';
import 'package:flutter/material.dart';

class TipsScreen extends StatefulWidget {
  final String url;
  const TipsScreen(this.url);

  @override
  _MyImageScreen createState() => _MyImageScreen(url);
}

class _MyImageScreen extends State<TipsScreen> {
  final String url;
  final _array = const {
    'how to determine screen height and width': Viewcode(
        0,
        'How to determine screen height and width',
        'double width = MediaQuery.of(context).size.width;\ndouble height = MediaQuery.of(context).size.height;\nTo get height just of SafeArea (for iOS 11 and above):\nvar padding = MediaQuery.of(context).padding;\ndouble newheight = height - padding.top - padding.bottom;',
        ''),
    'how to set and lock screen orientation': Viewcode(
        1,
        'How to set and lock screen orientation',
        'import \'package:flutter/services.dart\'\nThis will give you access to the SystemChrome class, which "Controls specific aspects of the operating system\'s graphical interface and how it interacts with the application."',
        'assets/code/lockrotate.dart'),
    'how to set carousel slider': Viewcode(
        1,
        'How to set carousel slider',
        'Install carousel_slider, then import \'package:carousel_slider/carousel_slider.dart\'\nThis will make you can set carousel slider effect.',
        'assets/code/carouselslider.dart'),
    'how to detect the host platform from Dart code': Viewcode(
        1,
        'How to detect the host platform from Dart code',
        'How to know your app on what platform is, you can import \'dart:io\'; and import \'package:flutter/foundation.dart\'',
        'assets/code/detectos.dart'),
    'how to query search item in List': Viewcode(
        1,
        'How to query search item in List',
        'You can use where function.',
        'assets/code/searchcontents.dart'),
    'how to read text from files and display them': Viewcode(
        1,
        'How to read text from files and display them',
        'You can import \'package:flutter/services.dart\'; then use Future to read files',
        'assets/code/readtext.dart'),
    'how to play a network video in flutter app': Viewcode(
        1,
        'How to play a network video in flutter app',
        'You can install video_player plugins, then add permision to Android and iOS.',
        'assets/code/playvideo.dart'),
    'how to go on about receiving JSON array in flutter and parsing it':
        Viewcode(
            1,
            'How to go on about receiving JSON array in flutter and parsing it',
            'When you consider parsing a array json, you can parse it as list.',
            'assets/code/arrayjsonparse.dart'),
    'how to read local json file': Viewcode(
        1,
        'How to read local json file',
        'First, you need to declare this file as an asset in your pubspec.yaml, and then import \'package:flutter/services.dart\' show rootBundle; then use Future to read json',
        'assets/code/readjson.dart'),
    'how to parse json to map in flutter': Viewcode(
        1,
        'How to parse json to map in flutter',
        'First, import \'package:http/http.dart\' as http;\nimport \'dart:convert\';\nfinal response = await http.get(someEndPoint);\nfinal Map<String, dynamic> data = json.decode(response.body);',
        'assets/code/parsesimplejson.dart'),
    'how to parse nested json array and put it in a model class': Viewcode(
        1,
        'How to parse nested json array and put it in a model class',
        'First, import \'package:http/http.dart\' as http;\nimport \'dart:convert\';\nfinal response = await http.get(someEndPoint);\nfinal data = json.decode(response.body) as List;\n'
            'jsonList.map((map) => User.fromJson(map)).toList();',
        'assets/code/parsenestjson.dart'),
    'listTile with multiple trailing icon buttons': Viewcode(
        1,
        'ListTile with multiple trailing icon buttons',
        'You can use Row layout and set mainAxisSize: MainAxisSize.min',
        'assets/code/multipleiconbtns.dart'),
    'add desktop support to an existing flutter app': Viewcode(
        0,
        'Add desktop support to an existing flutter app',
        'To add desktop support to an existing Flutter project, run the following command in a terminal from the root project directory:\n'
            'flutter create --platforms=windows,macos,linux .\n'
            'To add only specific desktop platforms, change the platforms list to include only the platform(s) you want to add.',
        ''),
    'how to remove debug banner on emulators': Viewcode(
        0,
        'How to remove debug banner on emulators',
        'set the debugShowCheckedModeBanner property of the MaterialApp class to false.\ndebugShowCheckedModeBanner: false',
        ''),
    'how to disable landscape mode in flutter': Viewcode(
        1,
        'How to disable landscape mode in flutter',
        'First, import \'package:flutter/services.dart\'; Next, WidgetsFlutterBinding.ensureInitialized();\nSystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);',
        'assets/code/disablerotate.dart'),
    'live email validation in Flutter': Viewcode(
        1,
        'Live email validation in Flutter',
        'Install email_validator; Next……;',
        'assets/code/emailvalid.dart'),
    'how to embed youtube in flutter app': Viewcode(
        1,
        'How to embed youtube in flutter app',
        'Install youtube_player_flutter……',
        'assets/code/emailvalid.dart'),
    'how to select images from gallery': Viewcode(
        1,
        'How to select images from gallery',
        'First, you should make iOS and Android permissions;\nNext, Install the package image_picker;\nThen……',
        'assets/code/pickimage.dart'),
    'how to select videos from gallery': Viewcode(
        1,
        'How to select videos from gallery',
        'First, you should make iOS and Android permissions;\nNext, Install the package image_picker and video_player;\nThen……',
        'assets/code/pickvideo.dart'),
    'how to get the filename of a file': Viewcode(
        0,
        'How to get the filename of a file',
        'First, import \'package:path/path.dart\';File file = new File("/dir1/dir2/file.ext");\nString basename = basename(file.path);',
        ''),
  };
  var _foundUsers = <Widget>[];
  var _getKeys = [];
  int _count = 0;
  @override
  void initState() {
    _getKeys = _array.keys.toList();
    _count = _getKeys.length;
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
    return WillPopScope(
      onWillPop: () async {
        bool willLeave = false;
        // show the confirm dialog
        await showDialog(
            context: context,
            builder: (_) => AlertDialog(
                  title: Text('Are you sure want to leave?'),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          willLeave = true;
                          Navigator.of(context).pop();
                        },
                        child: Text('Yes')),
                    TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text('No'))
                  ],
                ));
        return willLeave;
      },
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          centerTitle: true,
          title: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: TextFormField(
              maxLines: 1,
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                icon: const Icon(
                  Icons.search,
                  color: Colors.blue,
                ),
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.grey[700]),
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
                ? [
                    Image.asset(url, width: double.infinity),
                    Container(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text(
                      'Collected $_count tips',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w700),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 20.0),
                    ),
                    ..._foundUsers
                  ]
                : <Widget>[
                    Container(
                      padding: const EdgeInsets.all(20.0),
                    ),
                    const Center(
                      child: Text(
                        'No results found',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
          ),
        ),
      ),
    );
  }
}
