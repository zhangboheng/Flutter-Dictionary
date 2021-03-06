// ignore_for_file: no_logic_in_create_state, use_key_in_widget_constructors, prefer_const_constructors, avoid_print

import '../widgettools/viewcode.dart';
import 'package:flutter/material.dart';
import '../ad-helper.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class TipsScreen extends StatefulWidget {
  final String url;
  const TipsScreen(this.url);

  @override
  _MyImageScreen createState() => _MyImageScreen(url);
}

class _MyImageScreen extends State<TipsScreen> {
  final String url;
  late BannerAd _ad;

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
        'Install email_validator; Next??????;',
        'assets/code/emailvalid.dart'),
    'how to embed youtube in flutter app': Viewcode(
        1,
        'How to embed youtube in flutter app',
        'Install youtube_player_flutter??????',
        'assets/code/emailvalid.dart'),
    'how to select images from gallery': Viewcode(
        1,
        'How to select images from gallery',
        'First, you should make iOS and Android permissions;\nNext, Install the package image_picker;\nThen??????',
        'assets/code/pickimage.dart'),
    'how to select videos from gallery': Viewcode(
        1,
        'How to select videos from gallery',
        'First, you should make iOS and Android permissions;\nNext, Install the package image_picker and video_player;\nThen??????',
        'assets/code/pickvideo.dart'),
    'how to get the filename of a file': Viewcode(
        0,
        'How to get the filename of a file',
        'First, import \'package:path/path.dart\';File file = new File("/dir1/dir2/file.ext");\nString basename = basename(file.path);',
        ''),
    'what is statefulwidget lifecycle': Viewcode(
        1,
        'What is statefulwidget lifecycle',
        'You can click the tip to read more.',
        'assets/code/statefulwidgetlifecycle.dart'),
    'how to add fingerprint authentication to your android app': Viewcode(
        1,
        'How to add fingerprint authentication to your Android App',
        'You can install the local_auth plugin.',
        'assets/code/localauth.dart'),
    'how to add touchid and faceid to your ios app': Viewcode(
        1,
        'How to add Touch ID and Face ID to your App',
        'You can install the local_auth plugin.',
        'assets/code/localauth.dart'),
    'how to animate a page route transition': Viewcode(
        1,
        'How to animate a page route transition',
        'Turn to next page.',
        'assets/code/routetransition.dart'),
    'how to fade a widget in and out': Viewcode(
        1,
        'How to fade a widget in and out',
        'The AnimatedOpacity widget makes it easy to perform opacity animations.',
        'assets/code/fadeinout.dart'),
    'how to animate the properties of a container': Viewcode(
        1,
        'How to animate the properties of a container',
        'The Container class provides a convenient way to create a widget with specific properties: width, height, background color, padding, borders, and more.',
        'assets/code/animatecontainer.dart'),
    'how to add a drawer to a screen': Viewcode(
        1,
        'How to add a drawer to a screen',
        'In apps that use Material Design, there are two primary options for navigation: tabs and drawers. When there is insufficient space to support tabs, drawers provide a handy alternative.',
        'assets/code/adddrawer.dart'),
    'how to display a snackbar': Viewcode(
        1,
        'How to display a snackbar',
        'It can be useful to briefly inform your users when certain actions take place.',
        'assets/code/displaysnack.dart'),
    'how to update the UI based on orientation': Viewcode(
        1,
        'How to update the UI based on orientation',
        'In some situations, you want to update the display of an app when the user rotates the screen from portrait mode to landscape mode.',
        'assets/code/orientationbuilt.dart'),
    'how to use themes to share colors and font styles': Viewcode(
        1,
        'How to use themes to share colors and font styles',
        'To share colors and font styles throughout an app, use themes.',
        'assets/code/themeshare.dart'),
    'how to work with taps': Viewcode(
        1,
        'How to work with taps',
        'Working with tabs is a common pattern in apps that follow the Material Design guidelines.',
        'assets/code/tapschange.dart'),
    'how to build a form with validation': Viewcode(
        1,
        'How to build a form with validation',
        'Apps often require users to enter information into a text field...',
        'assets/code/formvalidation.dart'),
    'how to create and style a text field': Viewcode(
        1,
        'How to create and style a text field',
        'Text fields allow users to type text into an app.',
        'assets/code/textfieldstyle.dart'),
    'how to focus and text fields': Viewcode(
        1,
        'How to focus and text fields',
        'When a text field is selected and accepting input, it is said to have focused.',
        'assets/code/focusfields.dart'),
    'how to handle changes to a text field': Viewcode(
        1,
        'How to handle changes to a text field',
        'it???s useful to run a callback function every time the text in a text field changes.',
        'assets/code/handletextfield.dart'),
    'how to retrieve the value of a text filed': Viewcode(
        1,
        'How to retrieve the value of a text filed',
        'In this recipe, learn how to retrieve the text a user has entered into a text field.',
        'assets/code/handletextfield.dart'),
    'how to add Material touch ripples': Viewcode(
        1,
        'How to add Material touch ripples',
        'Widgets that follow the Material Design guidelines display a ripple animation when tapped.',
        'assets/code/touchripples.dart'),
    'how to handle taps': Viewcode(
        1,
        'How to handle taps',
        'You not only want to display information to users, you want users to interact with your app.',
        'assets/code/handletaps.dart'),
    'how to implement swipe to dismiss': Viewcode(
        1,
        'How to implement swipe to dismiss',
        'Flutter makes this task easy by providing the Dismissible widget. Learn how to implement swipe to dismiss with the example.',
        'assets/code/dismisslists.dart'),
    'how to display images': Viewcode(1, 'How to display images.',
        'Easy to display image in flutter.', 'assets/code/displayimage.dart'),
    'how to fade in images with a placeholder': Viewcode(
        1,
        'How to fade in images with a placeholder',
        'When displaying images using the default Image widget, you might notice they simply pop onto the screen as they???re loaded.',
        'assets/code/fadeimage.dart'),
    'how to create a grid list': Viewcode(
        1,
        'How to create a grid list',
        'In some cases, you might want to display your items as a grid rather than a normal list of items that come one after the next.',
        'assets/code/creategrid.dart'),
    'how to create a horizontal list': Viewcode(
        1,
        'How to create a horizontal list',
        'You might want to create a list that scrolls horizontally rather than vertically.',
        'assets/code/horizontallist.dart'),
    'how to place a floating app bar above a list': Viewcode(
        1,
        'How to place a floating app bar above a list',
        'To make it easier for users to view a list of items, you might want to hide the app bar as the user scrolls down the list...',
        'assets/code/floatingappbar.dart'),
    'how to navigate with named routes': Viewcode(
        1,
        'How to navigate with named routes',
        'To work with named routes, use the Navigator.pushNamed() function.',
        'assets/code/routescreen.dart'),
    'how to pass arguments to a named route': Viewcode(
        1,
        'How to pass arguments to a named route',
        'The Navigator provides the ability to navigate to a named route from any part of an app using a common identifier.',
        'assets/code/passarguments.dart'),
    'how to return data from a screen': Viewcode(
        1,
        'How to return data from a screen',
        'When the user taps an option, you want to inform the first screen of the user???s selection so that it can act on that information.',
        'assets/code/returndatafrom.dart'),
    'how to send data to a new screen': Viewcode(
        1,
        'How to send data to a new screen',
        'Often, you not only want to navigate to a new screen, but also pass data to the screen as well.',
        'assets/code/senddatanewscreen.dart'),
    'how to delete data on the internet': Viewcode(
        1,
        'How to delete data on the internet',
        'This recipe covers how to delete data over the internet using the http package.',
        'assets/code/deletedatajson.dart'),
    'how to make authenticated requests': Viewcode(
        1,
        'How to make authenticated requests',
        'To fetch data from most web services, you need to provide authorization. There are many ways to do this, but perhaps the most common uses the Authorization HTTP header.',
        'assets/code/authenticatedjson.dart'),
    'how to check Internet connection': Viewcode(
        1,
        'How to check Internet connection',
        'You may want to check the internet connection of the device that runs your application. If the application is developed using Flutter, you can read the examples in this tutorial.',
        'assets/code/checkinternet.dart'),
    'how to get widget size and position': Viewcode(
        1,
        'How to get widget size and position',
        'You can create a globle key to do it.',
        'assets/code/getwidgetproperties.dart'),
    'how to create draggable floating action button': Viewcode(
        1,
        'How to create draggable floating action button',
        'This tutorial has an example that explains what you need to do in order to create a floating action button that can be dragged anywhere around the screen.',
        'assets/code/dragfloatingbtn.dart'),
    'how to using repaintboundary': Viewcode(
        1,
        'How to using repaintboundary',
        'If you are looking for a way to prevent unnecessary repaints, you can consider using RepaintBoundary.',
        'assets/code/usingpaintboundary.dart'),
    'an animatedlist example': Viewcode(
        1,
        'An animatedlist example',
        'An easy example to learn animatedlist.',
        'assets/code/animatedlist.dart'),
    'a scaletransition example': Viewcode(
        1,
        'A scaletransition example',
        'An easy example to learn animatedlist.',
        'assets/code/scaletransition.dart'),
    'a fluttertoast example': Viewcode(1, 'A fluttertoast example',
        'An easy example to fluttertoast.', 'assets/code/toastmessage.dart'),
    'a circularprogressindicator example': Viewcode(
        1,
        'A circularprogressindicator example',
        'An easy example to circularprogressindicator.',
        'assets/code/circularprogress.dart'),
    'how to set statue bar colors, brightness and transparency': Viewcode(
        1,
        'How to set statue bar colors, brightness and transparency',
        'Using Flutter, setting the style of the status bar can be done easily by using AppBar, SystemChrome, or AnnotatedRegion.',
        'assets/code/changestatuebar.dart'),
    'how to set and get system clipboard data': Viewcode(
        1,
        'How to set and get system clipboard data',
        'Flutter provides a utility named Clipboard that allows us to interact with the system clipboard.',
        'assets/code/clipborddata.dart'),
    'how to use hapticfeedback examples': Viewcode(
        1,
        'How to use hapticfeedback examples',
        'The example show you how to trigger haptic feedback in Flutter which works on Android and iOS.',
        'assets/code/clipborddata.dart'),
    'a switch input example': Viewcode(
        1,
        'A switch input example',
        'Switch has two required attributes: value and onSwitchChange. The value passed on value attribute will determine whether it\'s active or inactive.',
        'assets/code/switchinput.dart'),
    'a slider input example': Viewcode(
        1,
        'a slider input example',
        'A Slider is an input widget where user can set a value by dragging to or pressing on desired position.',
        'assets/code/sliderinput.dart'),
    'how to capitalize the TextField value first letter of the first word for each sentence?':
        Viewcode(
            0,
            'How to capitalize the TextField value first letter of the first word for each sentence?',
            'You can use textCapitalization property of a TextField widget.TextField(textCapitalization: TextCapitalization.characters,)\n'
                'or var string = "text".toUpperCase()',
            ''),
    'using tabbar & tabbarview examples': Viewcode(
        1,
        'Using TabBar & TabBarView Examples',
        'TabBar is used to create the tabs, while TabBarView is used to define the content of each tab.',
        'assets/code/tabview.dart'),
    'set background image': Viewcode(
        1,
        'Set Background Image',
        'TabBar is used to create the tabs, while TabBarView is used to define the content of each tab.',
        'assets/code/setbackroundimage.dart'),
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
    _ad = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      size: AdSize.banner,
      request: AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {});
        },
        onAdFailedToLoad: (ad, error) {
          // Releases an ad resource when it fails to load
          ad.dispose();

          print('Ad load failed (code=${error.code} message=${error.message})');
        },
      ),
    );
    _ad.load();
    super.initState();
  }

  @override
  void dispose() {
    _ad.dispose();

    super.dispose();
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
                      child: AdWidget(ad: _ad),
                      width: MediaQuery.of(context).size.width,
                      height: 72.0,
                      alignment: Alignment.center,
                    ),
                    ..._foundUsers
                  ]
                : <Widget>[
                    Container(
                      child: AdWidget(ad: _ad),
                      width: MediaQuery.of(context).size.width,
                      height: 72.0,
                      alignment: Alignment.center,
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 2.0),
                    ),
                    Center(
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
