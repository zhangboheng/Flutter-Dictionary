// ignore_for_file: prefer_const_constructors, unused_import
import 'index.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return MaterialApp(
            // Hide the debug banner
            debugShowCheckedModeBanner: false,
            title: 'Flutter Dictionary',
            theme: ThemeData(primarySwatch: Colors.blue),
            darkTheme: ThemeData.dark(),
            themeMode: currentMode,
            home: HomePage(),
          );
        });
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _array = {
    'icon': Accordion(
        'Icon',
        'A graphical icon widget drawn with a glyph from a font described in an IconData such as material\'s predefined IconDatas in Icons.\nIcon(IconData? icon, {Key? key, double? size, Color? color, String? semanticLabel, TextDirection? textDirection})',
        'https://api.flutter.dev/flutter/material/Icons-class.html'),
    'flutterlogo': Accordion(
        'FlutterLogo',
        'The Flutter logo, in widget form.\n({Key? key, double? size, Color textColor, FlutterLogoStyle style, Duration duration, Curve curve})',
        'https://api.flutter.dev/flutter/material/FlutterLogo-class.html'),
    'image': Accordion(
        'Image',
        'Opaque handle to raw decoded image data (pixels).',
        'https://api.flutter.dev/flutter/dart-ui/Image-class.html'),
    'text': Accordion(
        'Text',
        'A run of text with a single style.\nText(String data, {Key? key, TextStyle? style, StrutStyle? strutStyle, TextAlign? textAlign, TextDirection? textDirection, Locale? locale, bool? softWrap, TextOverflow? overflow, double? textScaleFactor, int? maxLines, String? semanticsLabel, TextWidthBasis? textWidthBasis, TextHeightBehavior? textHeightBehavior})',
        'https://api.flutter.dev/flutter/widgets/Text-class.html'),
    'textspan': Accordion(
        'TextSpan',
        'An immutable span of text.\nTextSpan({String? text, List<InlineSpan>? children, TextStyle? style, GestureRecognizer? recognizer, MouseCursor? mouseCursor, PointerEnterEventListener? onEnter, PointerExitEventListener? onExit, String? semanticsLabel})',
        'https://api.flutter.dev/flutter/painting/TextSpan-class.html'),
    'richtext': Accordion(
        'RichText',
        'A paragraph of rich text.\nRichText({Key? key, required InlineSpan text, TextAlign textAlign, TextDirection? textDirection, bool softWrap, TextOverflow overflow, double textScaleFactor, int? maxLines, Locale? locale, StrutStyle? strutStyle, TextWidthBasis textWidthBasis, TextHeightBehavior? textHeightBehavior})',
        'https://api.flutter.dev/flutter/widgets/RichText-class.html'),
    'textbutton': Accordion(
        'TextButton',
        'A Material Design "Text Button"\n({Key? key, required VoidCallback? onPressed, VoidCallback? onLongPress, ButtonStyle? style, FocusNode? focusNode, bool autofocus = false, Clip clipBehavior = Clip.none, required Widget child})',
        'https://api.flutter.dev/flutter/material/TextButton-class.html'),
    'elevatedbutton': Accordion(
        'ElevatedButton',
        'A Material Design "elevated button".\n{Key? key, required VoidCallback? onPressed, VoidCallback? onLongPress, ButtonStyle? style, FocusNode? focusNode, bool autofocus = false, Clip clipBehavior = Clip.none, required Widget? child})',
        'https://api.flutter.dev/flutter/material/ElevatedButton-class.html'),
    'iconbutton': Accordion(
        'IconButton',
        'A material design icon button.\n({Key? key, double iconSize, VisualDensity? visualDensity, EdgeInsetsGeometry padding, AlignmentGeometry alignment, double? splashRadius, Color? color, Color? focusColor, Color? hoverColor, Color? highlightColor, Color? splashColor, Color? disabledColor, required VoidCallback? onPressed, MouseCursor mouseCursor, FocusNode? focusNode, bool autofocus, String? tooltip, bool enableFeedback, BoxConstraints? constraints, required Widget icon})',
        'https://api.flutter.dev/flutter/material/IconButton-class.html'),
    'outlinedbutton': Accordion(
        'OutlinedButton',
        'A Material Design "Outlined Button"; essentially a TextButton with an outlined border.\n({Key? key, required VoidCallback? onPressed, VoidCallback? onLongPress, ButtonStyle? style, FocusNode? focusNode, bool autofocus = false, Clip clipBehavior = Clip.none, required Widget child})',
        'https://api.flutter.dev/flutter/material/OutlinedButton-class.html'),
    'cupertinobutton': Accordion(
        'CupertinoButton',
        'An iOS-style button.\n({Key? key, required Widget child, EdgeInsetsGeometry? padding, Color? color, Color disabledColor, double? minSize, double? pressedOpacity, BorderRadius? borderRadius, AlignmentGeometry alignment, required VoidCallback? onPressed})',
        'https://api.flutter.dev/flutter/cupertino/CupertinoButton-class.html'),
    'scrollbar': Accordion(
        'Scrollbar',
        'A Material Design scrollbar.\nScrollbar({Key? key, required Widget child, ScrollController? controller, bool? isAlwaysShown, bool? showTrackOnHover, double? hoverThickness, double? thickness, Radius? radius, ScrollNotificationPredicate? notificationPredicate, bool? interactive})',
        'https://api.flutter.dev/flutter/material/Scrollbar-class.html'),
    'alertdialog': Accordion(
        'AlertDialog',
        'A material design alert dialog.\n({Key? key, Widget? title, EdgeInsetsGeometry? titlePadding, TextStyle? titleTextStyle, Widget? content, EdgeInsetsGeometry contentPadding, TextStyle? contentTextStyle, List<Widget>? actions, EdgeInsetsGeometry actionsPadding, VerticalDirection? actionsOverflowDirection, double? actionsOverflowButtonSpacing, EdgeInsetsGeometry? buttonPadding, Color? backgroundColor, double? elevation, String? semanticLabel, EdgeInsets insetPadding, Clip clipBehavior, ShapeBorder? shape, bool scrollable})',
        'https://api.flutter.dev/flutter/material/AlertDialog-class.html'),
    'align': Accordion(
        'Align',
        'A widget that aligns its child within itself and optionally sizes itself based on the child\'s size.\nAlign({Key? key, AlignmentGeometry alignment, double? widthFactor, double? heightFactor, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/Align-class.html'),
    'aspectRatio': Accordion(
        'AspectRatio',
        'A widget that attempts to size the child to a specific aspect ratio.\nAspectRatio({Key? key, required double aspectRatio, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/AspectRatio-class.html'),
    'baseline': Accordion(
        'Baseline',
        'A widget that positions its child according to the child\'s baseline.\nBaseline({Key? key, required double baseline, required TextBaseline baselineType, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/Baseline-class.html'),
    'center': Accordion(
        'Center',
        'A widget that centers its child within itself.\nCenter({Key? key, double? widthFactor, double? heightFactor, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/Center-class.html'),
    'column': Accordion(
        'Column',
        'A widget that displays its children in a vertical array.\nColumn({Key? key, MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start, MainAxisSize mainAxisSize = MainAxisSize.max, CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center, TextDirection? textDirection, VerticalDirection verticalDirection = VerticalDirection.down, TextBaseline? textBaseline, List<Widget> children = const <Widget>[]})',
        'https://api.flutter.dev/flutter/widgets/Column-class.html'),
    'constrainedBox': Accordion(
        'ConstrainedBox',
        'A widget that imposes additional constraints on its child.\nConstrainedBox({Key? key, required BoxConstraints constraints, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/ConstrainedBox-class.html'),
    'container': Accordion(
        'Container',
        'A convenience widget that combines common painting, positioning, and sizing widgets.\nContainer({Key? key, AlignmentGeometry? alignment, EdgeInsetsGeometry? padding, Color? color, Decoration? decoration, Decoration? foregroundDecoration, double? width, double? height, BoxConstraints? constraints, EdgeInsetsGeometry? margin, Matrix4? transform, AlignmentGeometry? transformAlignment, Widget? child, Clip clipBehavior})',
        'https://api.flutter.dev/flutter/widgets/Container-class.html'),
    'listview': Accordion(
        'ListView',
        'A scrollable list of widgets arranged linearly.\nListView({Key? key, Axis scrollDirection = Axis.vertical, bool reverse = false, ScrollController? controller, bool? primary, ScrollPhysics? physics, bool shrinkWrap = false, EdgeInsetsGeometry? padding, double? itemExtent, bool addAutomaticKeepAlives = true, bool addRepaintBoundaries = true, bool addSemanticIndexes = true, double? cacheExtent, List<Widget> children = const <Widget>[], int? semanticChildCount, DragStartBehavior dragStartBehavior = DragStartBehavior.start, ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual, String? restorationId, Clip clipBehavior = Clip.hardEdge})',
        'https://api.flutter.dev/flutter/widgets/ListView-class.html'),
    'padding': Accordion(
        'Padding',
        'A widget that insets its child by the given padding.\nPadding({Key? key, required EdgeInsetsGeometry padding, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/Padding-class.html'),
    'row': Accordion(
        'Row',
        'A widget that displays its children in a horizontal array.\nRow({Key? key, MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start, MainAxisSize mainAxisSize = MainAxisSize.max, CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center, TextDirection? textDirection, VerticalDirection verticalDirection = VerticalDirection.down, TextBaseline? textBaseline, List<Widget> children = const <Widget>[]})',
        'https://api.flutter.dev/flutter/widgets/Row-class.html'),
    'sizedbox': Accordion(
        'SizedBox',
        'A box with a specified size.\nSizedBox({Key? key, double? width, double? height, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/SizedBox-class.html'),
  };
  // This list holds the data for the list view
  var _foundUsers = <Widget>[];
  var _getKeys = [];
  @override
  void initState() {
    _getKeys = _array.keys.toList();
    _getKeys.sort((a, b) => a.compareTo(b));
    // at the beginning, all users are shown
    _foundUsers = _getKeys.map((item) => _array[item]).toList().cast<Widget>();
    initMyLibrary();
    super.initState();
  }

  void initMyLibrary() {
    // ignore: invalid_use_of_visible_for_testing_member
    LicenseRegistry.reset();
    LicenseRegistry.addLicense(() async* {
      yield LicenseEntryWithLineBreaks(<String>['License'], '''
  Copyright 2021 luckydesigner.space. All rights reserved.
  
     * Redistributions of source code must retain the above copyright
  notice, this list of conditions and the following disclaimer.
   
  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS''');
    });
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
      // we use the toLowerCase() method to make it case-insensitive

    }
    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

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
              contentPadding: EdgeInsets.only(
                bottom: 18, // HERE THE IMPORTANT PART
              ),
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
        actions: [
          IconButton(
              icon: Icon(MyApp.themeNotifier.value == ThemeMode.light
                  ? Icons.dark_mode
                  : Icons.light_mode),
              onPressed: () {
                MyApp.themeNotifier.value =
                    MyApp.themeNotifier.value == ThemeMode.light
                        ? ThemeMode.dark
                        : ThemeMode.light;
              })
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment
                        .center, //Center Row contents horizontally,
                    crossAxisAlignment: CrossAxisAlignment
                        .center, //Center Row contents vertically,
                    children: const <Widget>[
                      FlutterLogo(size: 56),
                      Text('Flutter Dictionary  ',
                          style: TextStyle(fontSize: 24, color: Colors.white)),
                    ])),
            ListTile(
              leading: Icon(Icons.smart_button),
              title: Text('Button'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ButtonItems(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Icon'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IconItems(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.aspect_ratio),
              title: Text('Layout'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Layouts(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.article_outlined),
              title: Text('Popup'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Popup(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.font_download),
              title: Text('Text'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TextItems(),
                  ),
                );
              },
            ),
            Divider(color: Colors.grey, indent: 20, endIndent: 20),
            TextButton(
              child: Text(
                'About',
                style: TextStyle(
                    color: MyApp.themeNotifier.value == ThemeMode.light
                        ? Colors.black
                        : Colors.white),
              ),
              onPressed: () {
                showAboutDialog(
                  context: context,
                  applicationIcon: FlutterLogo(),
                  applicationName: 'Flutter Dictionary',
                  applicationVersion: '0.0.1',
                  applicationLegalese: '©2021 luckydesigner.space',
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(top: 15),
                        child:
                            Text('This is a simple dictionary about Flutter')),
                    Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text('Telegram Group:t.me/Luckydesignerspace',
                            style: TextStyle(fontSize: 12))),
                  ],
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: _foundUsers.isNotEmpty
                ? _foundUsers
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
