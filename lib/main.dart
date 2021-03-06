// ignore_for_file: prefer_const_constructors, unused_import, use_key_in_widget_constructors, avoid_print
import 'index.dart';
import 'dart:math';
import 'dart:async';
import 'ad-helper.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  runApp(const MyApp(title: 'Flutter Dictionary'));
}

class MyApp extends StatelessWidget {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);
  const MyApp({Key? key, String? title}) : super(key: key);
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

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController oneSecondController;
  @override
  void initState() {
    super.initState();
    oneSecondController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..repeat(reverse: true);
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement<void, void>(
          context,
          MaterialPageRoute<dynamic>(
              builder: (BuildContext context) => const SecondScreen()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Align(
          widthFactor: 0.8,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RotationTransition(
                turns: oneSecondController,
                child: DottedBorder(
                  borderType: BorderType.RRect,
                  radius: Radius.circular(12),
                  color: Colors.black,
                  strokeWidth: 1,
                  child: FlutterLogo(size: 100),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              Text('Flutter Dictionary',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    decoration: TextDecoration.none,
                  )),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              Text('V0.01',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    decoration: TextDecoration.none,
                  )),
            ],
          ),
        ));
  }

  @override
  void dispose() {
    oneSecondController.dispose();
    super.dispose();
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int _current = 0;

  late BannerAd _ad;

  final List data = [
    {"title": "Dart Learning", "url": "assets/images/dartlearning.jpg"},
    {"title": "Flutter Packages", "url": "assets/images/packages.jpg"},
    {"title": "Developer Tools", "url": "assets/images/developertools.jpg"},
    {"title": "Userful Tips", "url": "assets/images/usefultips.jpg"},
  ];
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
        'Opaque handle to raw decoded image data (pixels).\nImage({Key? key, required ImageProvider<Object> image, ImageFrameBuilder? frameBuilder, ImageLoadingBuilder? loadingBuilder, ImageErrorWidgetBuilder? errorBuilder, String? semanticLabel, bool excludeFromSemantics, double? width, double? height, Color? color, BlendMode? colorBlendMode, BoxFit? fit, AlignmentGeometry alignment, ImageRepeat repeat, Rect? centerSlice, bool matchTextDirection, bool gaplessPlayback, bool isAntiAlias, FilterQuality filterQuality})\nImage.asset(String name, {Key? key, AssetBundle? bundle, ImageFrameBuilder? frameBuilder, ImageErrorWidgetBuilder? errorBuilder, String? semanticLabel, bool excludeFromSemantics, double? scale, double? width, double? height, Color? color, BlendMode? colorBlendMode, BoxFit? fit, AlignmentGeometry alignment, ImageRepeat repeat, Rect? centerSlice, bool matchTextDirection, bool gaplessPlayback, bool isAntiAlias, String? package, FilterQuality filterQuality, int? cacheWidth, int? cacheHeight})\nImage.file(File file, {Key? key, double scale = 1.0, ImageFrameBuilder? frameBuilder, ImageErrorWidgetBuilder? errorBuilder, String? semanticLabel, bool excludeFromSemantics, double? width, double? height, Color? color, BlendMode? colorBlendMode, BoxFit? fit, AlignmentGeometry alignment, ImageRepeat repeat, Rect? centerSlice, bool matchTextDirection, bool gaplessPlayback, bool isAntiAlias, FilterQuality filterQuality, int? cacheWidth, int? cacheHeight})\nImage.memory(Uint8List bytes, {Key? key, double scale = 1.0, ImageFrameBuilder? frameBuilder, ImageErrorWidgetBuilder? errorBuilder, String? semanticLabel, bool excludeFromSemantics, double? width, double? height, Color? color, BlendMode? colorBlendMode, BoxFit? fit, AlignmentGeometry alignment, ImageRepeat repeat, Rect? centerSlice, bool matchTextDirection, bool gaplessPlayback, bool isAntiAlias, FilterQuality filterQuality, int? cacheWidth, int? cacheHeight})\nImage.network(String src, {Key? key, double scale = 1.0, ImageFrameBuilder? frameBuilder, ImageLoadingBuilder? loadingBuilder, ImageErrorWidgetBuilder? errorBuilder, String? semanticLabel, bool excludeFromSemantics, double? width, double? height, Color? color, BlendMode? colorBlendMode, BoxFit? fit, AlignmentGeometry alignment, ImageRepeat repeat, Rect? centerSlice, bool matchTextDirection, bool gaplessPlayback, FilterQuality filterQuality, bool isAntiAlias, Map<String, String>? headers, int? cacheWidth, int? cacheHeight})',
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
    'aspectratio': Accordion(
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
    'constrainedbox': Accordion(
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
    'floatingactionbutton': Accordion(
        'FloatingActionButton',
        'A material design floating action button.\nFloatingActionButton({Key? key, Widget? child, String? tooltip, Color? foregroundColor, Color? backgroundColor, Color? focusColor, Color? hoverColor, Color? splashColor, Object? heroTag, double? elevation, double? focusElevation, double? hoverElevation, double? highlightElevation, double? disabledElevation, required VoidCallback? onPressed, MouseCursor? mouseCursor, bool mini, ShapeBorder? shape, Clip clipBehavior, FocusNode? focusNode, bool autofocus, MaterialTapTargetSize? materialTapTargetSize, bool isExtended})\nFloatingActionButton.extended({Key? key, String? tooltip, Color? foregroundColor, Color? backgroundColor, Color? focusColor, Color? hoverColor, Object? heroTag, double? elevation, double? focusElevation, double? hoverElevation, Color? splashColor, double? highlightElevation, double? disabledElevation, required VoidCallback? onPressed, MouseCursor? mouseCursor, ShapeBorder? shape, bool isExtended, MaterialTapTargetSize? materialTapTargetSize, Clip clipBehavior, FocusNode? focusNode, bool autofocus, Widget? icon, required Widget label})',
        'https://api.flutter.dev/flutter/material/FloatingActionButton-class.html'),
    'snackbar': Accordion(
        'SnackBar',
        'A lightweight message with an optional action which briefly displays at the bottom of the screen.\nSnackBar({Key? key, required Widget content, Color? backgroundColor, double? elevation, EdgeInsetsGeometry? margin, EdgeInsetsGeometry? padding, double? width, ShapeBorder? shape, SnackBarBehavior? behavior, SnackBarAction? action, Duration duration, Animation<double>? animation, VoidCallback? onVisible})',
        'https://api.flutter.dev/flutter/material/SnackBar-class.html'),
    'card': Accordion(
        'Center',
        'A widget that centers its child within itself.\nCenter({Key? key, double? widthFactor, double? heightFactor, Widget? child})',
        'https://api.flutter.dev/flutter/material/Card-class.html'),
    'textfiled': Accordion(
        'TextFiled',
        'A material design text field.\nTextField({Key? key, TextEditingController? controller, FocusNode? focusNode, InputDecoration? decoration, TextInputType? keyboardType, TextInputAction? textInputAction, TextCapitalization textCapitalization, TextStyle? style, StrutStyle? strutStyle, TextAlign textAlign, TextAlignVertical? textAlignVertical, TextDirection? textDirection, bool readOnly, ToolbarOptions? toolbarOptions, bool? showCursor, bool autofocus, String obscuringCharacter, bool obscureText, bool autocorrect, SmartDashesType? smartDashesType, SmartQuotesType? smartQuotesType, bool enableSuggestions, int? maxLines, int? minLines, bool expands, int? maxLength, @Deprecated(\'Use maxLengthEnforcement parameter which provides more specific '
            'behavior related to the maxLength limit. '
            'This feature was deprecated after v1.25.0-5.0.pre.\') bool maxLengthEnforced, MaxLengthEnforcement? maxLengthEnforcement, ValueChanged<String>? onChanged, VoidCallback? onEditingComplete, ValueChanged<String>? onSubmitted, AppPrivateCommandCallback? onAppPrivateCommand, List<TextInputFormatter>? inputFormatters, bool? enabled, double cursorWidth, double? cursorHeight, Radius? cursorRadius, Color? cursorColor, BoxHeightStyle selectionHeightStyle, BoxWidthStyle selectionWidthStyle, Brightness? keyboardAppearance, EdgeInsets scrollPadding, DragStartBehavior dragStartBehavior, bool enableInteractiveSelection, TextSelectionControls? selectionControls, GestureTapCallback? onTap, MouseCursor? mouseCursor, InputCounterWidgetBuilder? buildCounter, ScrollController? scrollController, ScrollPhysics? scrollPhysics, Iterable<String>? autofillHints, String? restorationId})',
        'https://api.flutter.dev/flutter/material/TextField-class.html'),
    'textformfiled': Accordion(
        'TextFormField',
        'A material design text field.\nTextField({Key? key, TextEditingController? controller, FocusNode? focusNode, InputDecoration? decoration, TextInputType? keyboardType, TextInputAction? textInputAction, TextCapitalization textCapitalization, TextStyle? style, StrutStyle? strutStyle, TextAlign textAlign, TextAlignVertical? textAlignVertical, TextDirection? textDirection, bool readOnly, ToolbarOptions? toolbarOptions, bool? showCursor, bool autofocus, String obscuringCharacter, bool obscureText, bool autocorrect, SmartDashesType? smartDashesType, SmartQuotesType? smartQuotesType, bool enableSuggestions, int? maxLines, int? minLines, bool expands, int? maxLength, @Deprecated(\'Use maxLengthEnforcement parameter which provides more specific \' \'behavior related to the maxLength limit. \' \'This feature was deprecated after v1.25.0-5.0.pre.\') bool maxLengthEnforced, MaxLengthEnforcement? maxLengthEnforcement, ValueChanged<String>? onChanged, VoidCallback? onEditingComplete, ValueChanged<String>? onSubmitted, AppPrivateCommandCallback? onAppPrivateCommand, List<TextInputFormatter>? inputFormatters, bool? enabled, double cursorWidth, double? cursorHeight, Radius? cursorRadius, Color? cursorColor, BoxHeightStyle selectionHeightStyle, BoxWidthStyle selectionWidthStyle, Brightness? keyboardAppearance, EdgeInsets scrollPadding, DragStartBehavior dragStartBehavior, bool enableInteractiveSelection, TextSelectionControls? selectionControls, GestureTapCallback? onTap, MouseCursor? mouseCursor, InputCounterWidgetBuilder? buildCounter, ScrollController? scrollController, ScrollPhysics? scrollPhysics, Iterable<String>? autofillHints, String? restorationId})',
        'https://api.flutter.dev/flutter/painting/TextSpan-class.html'),
    'gradient': Accordion(
        'Gradient',
        'This is an interface that allows LinearGradient, RadialGradient, and SweepGradient classes to be used interchangeably in BoxDecorations.\nGradient({required List<Color> colors, List<double>? stops, GradientTransform? transform})',
        'https://api.flutter.dev/flutter/painting/Gradient-class.html'),
    'color': Accordion(
        'Color',
        'An immutable 32 bit color value in ARGB format.\nColor(0xFF42A5F5);\nColor.fromARGB(0xFF, 0x42, 0xA5, 0xF5);\nColor.fromARGB(255, 66, 165, 245);\nColor.fromRGBO(66, 165, 245, 1.0);',
        'https://api.flutter.dev/flutter/dart-ui/Color-class.html'),
    'popupmenubutton': Accordion(
        'PopupMenuButton',
        'Displays a menu when pressed and calls onSelected when the menu is dismissed because an item was selected. The value passed to onSelected is the value of the selected menu item.\nPopupMenuButton({Key? key, required PopupMenuItemBuilder<T> itemBuilder, T? initialValue, PopupMenuItemSelected<T>? onSelected, PopupMenuCanceled? onCanceled, String? tooltip, double? elevation, EdgeInsetsGeometry padding, Widget? child, Widget? icon, double? iconSize, Offset offset, bool enabled, ShapeBorder? shape, Color? color, bool? enableFeedback})',
        'https://api.flutter.dev/flutter/material/PopupMenuButton-class.html'),
    'checkbox': Accordion(
        'CheckBox',
        'A material design checkbox.\nCheckbox({Key? key, required bool? value, bool tristate, required ValueChanged<bool?>? onChanged, MouseCursor? mouseCursor, Color? activeColor, MaterialStateProperty<Color?>? fillColor, Color? checkColor, Color? focusColor, Color? hoverColor, MaterialStateProperty<Color?>? overlayColor, double? splashRadius, MaterialTapTargetSize? materialTapTargetSize, VisualDensity? visualDensity, FocusNode? focusNode, bool autofocus, OutlinedBorder? shape, BorderSide? side})',
        'https://api.flutter.dev/flutter/material/Checkbox-class.html'),
    'slider': Accordion(
        'Slider',
        'A Material Design slider.\nSlider({Key? key, required double value, required ValueChanged<double>? onChanged, ValueChanged<double>? onChangeStart, ValueChanged<double>? onChangeEnd, double min, double max, int? divisions, String? label, Color? activeColor, Color? inactiveColor, MouseCursor? mouseCursor, SemanticFormatterCallback? semanticFormatterCallback, FocusNode? focusNode, bool autofocus})',
        'https://api.flutter.dev/flutter/material/Slider-class.html'),
    'switchListtile': Accordion(
        'SwitchListTile',
        'A ListTile with a Switch. In other words, a switch with a label.\nSwitchListTile({Key? key, required bool value, required ValueChanged<bool>? onChanged, Color? tileColor, Color? activeColor, Color? activeTrackColor, Color? inactiveThumbColor, Color? inactiveTrackColor, ImageProvider<Object>? activeThumbImage, ImageProvider<Object>? inactiveThumbImage, Widget? title, Widget? subtitle, bool isThreeLine, bool? dense, EdgeInsetsGeometry? contentPadding, Widget? secondary, bool selected, bool autofocus, ListTileControlAffinity controlAffinity, ShapeBorder? shape, Color? selectedTileColor})',
        'https://api.flutter.dev/flutter/material/SwitchListTile-class.html'),
    'navigationrail': Accordion(
        'NavigationRail',
        'A material widget that is meant to be displayed at the left or right of an app to navigate between a small number of views, typically between three and five.\nNavigationRail({Key? key, Color? backgroundColor, bool extended, Widget? leading, Widget? trailing, required List<NavigationRailDestination> destinations, required int selectedIndex, ValueChanged<int>? onDestinationSelected, double? elevation, double? groupAlignment, NavigationRailLabelType? labelType, TextStyle? unselectedLabelTextStyle, TextStyle? selectedLabelTextStyle, IconThemeData? unselectedIconTheme, IconThemeData? selectedIconTheme, double? minWidth, double? minExtendedWidth}))',
        'https://api.flutter.dev/flutter/material/NavigationRail-class.html'),
    'wrap': Accordion(
        'Wrap',
        'A widget that displays its children in multiple horizontal or vertical runs.\nWrap({Key? key, Axis direction, WrapAlignment alignment, double spacing, WrapAlignment runAlignment, double runSpacing, WrapCrossAlignment crossAxisAlignment, TextDirection? textDirection, VerticalDirection verticalDirection, Clip clipBehavior, List<Widget> children = const <Widget>[]})',
        'https://api.flutter.dev/flutter/widgets/Wrap-class.html'),
    'stack': Accordion(
        'Stack',
        'A widget that positions its children relative to the edges of its box.\nStack({Key? key, AlignmentGeometry alignment, TextDirection? textDirection, StackFit fit, @Deprecated(\'Use clipBehavior instead. See the migration guide in flutter.dev/go/clip-behavior. '
            'This feature was deprecated after v1.22.0-12.0.pre.\') Overflow overflow, Clip clipBehavior, List<Widget> children = const <Widget>[]})',
        'https://api.flutter.dev/flutter/widgets/Stack-class.html'),
    'showmodalbottomsheet': Accordion(
        'showModalBottomSheet',
        'Shows a modal material design bottom sheet.\n{required BuildContext context, required WidgetBuilder builder, Color? backgroundColor, double? elevation, ShapeBorder? shape, Clip? clipBehavior, Color? barrierColor, bool isScrollControlled = false, bool useRootNavigator = false, bool isDismissible = true, bool enableDrag = true, RouteSettings? routeSettings, AnimationController? transitionAnimationController}',
        'https://api.flutter.dev/flutter/material/SnackBar-class.html'),
    'actionchip': Accordion(
        'ActionChip',
        'A material design action chip.\nActionChip({Key? key, Widget? avatar, required Widget label, TextStyle? labelStyle, EdgeInsetsGeometry? labelPadding, required VoidCallback onPressed, double? pressElevation, String? tooltip, BorderSide? side, OutlinedBorder? shape, Clip clipBehavior, FocusNode? focusNode, bool autofocus, Color? backgroundColor, EdgeInsetsGeometry? padding, VisualDensity? visualDensity, MaterialTapTargetSize? materialTapTargetSize, double? elevation, Color? shadowColor})',
        'https://api.flutter.dev/flutter/material/ActionChip-class.html'),
    'aboutdialog': Accordion(
        'AboutDialog',
        'An about box. This is a dialog box with the application\'s icon, name, version number, and copyright, plus a button to show licenses for software used by the application.\nAboutDialog({Key? key, String? applicationName, String? applicationVersion, Widget? applicationIcon, String? applicationLegalese, List<Widget>? children})',
        'https://api.flutter.dev/flutter/material/AboutDialog-class.html'),
    'listtile': Accordion(
        'ListTile',
        'A single fixed-height row that typically contains some text as well as a leading or trailing icon.\nListTile({Key? key, Widget? leading, Widget? title, Widget? subtitle, Widget? trailing, bool isThreeLine, bool? dense, VisualDensity? visualDensity, ShapeBorder? shape, EdgeInsetsGeometry? contentPadding, bool enabled, GestureTapCallback? onTap, GestureLongPressCallback? onLongPress, MouseCursor? mouseCursor, bool selected, Color? focusColor, Color? hoverColor, FocusNode? focusNode, bool autofocus, Color? tileColor, Color? selectedTileColor, bool? enableFeedback, double? horizontalTitleGap, double? minVerticalPadding, double? minLeadingWidth})',
        'https://api.flutter.dev/flutter/material/ListTile-class.html'),
    'aboutlisttile': Accordion(
        'AboutListTile',
        'This widget is often added to an app\'s Drawer. When tapped it shows an about box dialog with showAboutDialog.\nAboutListTile({Key? key, Widget? icon, Widget? child, String? applicationName, String? applicationVersion, Widget? applicationIcon, String? applicationLegalese, List<Widget>? aboutBoxChildren, bool? dense})',
        'https://api.flutter.dev/flutter/material/AboutListTile-class.html'),
    'absorbpointer': Accordion(
        'AbsorbPointer',
        'A widget that is invisible during hit testing.\nIgnorePointer({Key? key, bool ignoring, bool? ignoringSemantics, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/IgnorePointer-class.html'),
    'ignorepointer': Accordion(
        'IgnorePointer',
        'A widget that absorbs pointers during hit testing.\nAbsorbPointer({Key? key, bool absorbing, Widget? child, bool? ignoringSemantics})',
        'https://api.flutter.dev/flutter/widgets/AbsorbPointer-class.html'),
    'cliprrect': Accordion(
        'ClipRRect',
        'A widget that clips its child using a rounded rectangle.\nClipRRect({Key? key, BorderRadius? borderRadius, CustomClipper<RRect>? clipper, Clip clipBehavior, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/ClipRRect-class.html'),
    'cliprect': Accordion(
        'ClipRect',
        'A widget that clips its child using a rectangle.\nClipRect({Key? key, CustomClipper<Rect>? clipper, Clip clipBehavior, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/ClipRect-class.html'),
    'buttonbar': Accordion(
        'ButtonBar',
        'An end-aligned row of buttons, laying out into a column if there is not enough horizontal space.\nButtonBar({Key? key, MainAxisAlignment? alignment, MainAxisSize? mainAxisSize, ButtonTextTheme? buttonTextTheme, double? buttonMinWidth, double? buttonHeight, EdgeInsetsGeometry? buttonPadding, bool? buttonAlignedDropdown, ButtonBarLayoutBehavior? layoutBehavior, VerticalDirection? overflowDirection, double? overflowButtonSpacing, List<Widget> children})',
        'https://api.flutter.dev/flutter/material/ButtonBar-class.html'),
    'appbar': Accordion(
        'AppBar',
        'A material design app bar.\nAppBar({Key? key, Widget? leading, bool automaticallyImplyLeading, Widget? title, List<Widget>? actions, Widget? flexibleSpace, PreferredSizeWidget? bottom, double? elevation, Color? shadowColor, ShapeBorder? shape, Color? backgroundColor, Color? foregroundColor, Brightness? brightness, IconThemeData? iconTheme, IconThemeData? actionsIconTheme, TextTheme? textTheme, bool primary, bool? centerTitle, bool excludeHeaderSemantics, double? titleSpacing, double toolbarOpacity, double bottomOpacity, double? toolbarHeight, double? leadingWidth, bool? backwardsCompatibility, TextStyle? toolbarTextStyle, TextStyle? titleTextStyle, SystemUiOverlayStyle? systemOverlayStyle})',
        'https://api.flutter.dev/flutter/material/AppBar-class.html'),
    'step': Accordion(
        'Step',
        'A material step used in Stepper. The step can have a title and subtitle, an icon within its circle, some content and a state that governs its styling.\nStep({required Widget title, Widget? subtitle, required Widget content, StepState state, bool isActive})',
        'https://api.flutter.dev/flutter/material/Step-class.html'),
    'checkboxlisttile': Accordion(
        'CheckboxListTile',
        'A ListTile with a Checkbox. In other words, a checkbox with a label.\nCheckboxListTile({Key? key, required bool? value, required ValueChanged<bool?>? onChanged, Color? activeColor, Color? checkColor, Color? tileColor, Widget? title, Widget? subtitle, bool isThreeLine, bool? dense, Widget? secondary, bool selected, ListTileControlAffinity controlAffinity, bool autofocus, EdgeInsetsGeometry? contentPadding, bool tristate, ShapeBorder? shape, Color? selectedTileColor})',
        'https://api.flutter.dev/flutter/material/CheckboxListTile-class.html'),
    'radio': Accordion(
        'Radio',
        'A material design radio button.\nRadio({Key? key, required T value, required T? groupValue, required ValueChanged<T?>? onChanged, MouseCursor? mouseCursor, bool toggleable, Color? activeColor, MaterialStateProperty<Color?>? fillColor, Color? focusColor, Color? hoverColor, MaterialStateProperty<Color?>? overlayColor, double? splashRadius, MaterialTapTargetSize? materialTapTargetSize, VisualDensity? visualDensity, FocusNode? focusNode, bool autofocus})',
        'https://api.flutter.dev/flutter/material/Radio-class.html'),
    'radiolisttile': Accordion(
        'RadioListTile',
        'A ListTile with a Radio. In other words, a radio button with a label.\nRadioListTile({Key? key, required T value, required T? groupValue, required ValueChanged<T?>? onChanged, bool toggleable, Color? activeColor, Widget? title, Widget? subtitle, bool isThreeLine, bool? dense, Widget? secondary, bool selected, ListTileControlAffinity controlAffinity, bool autofocus, EdgeInsetsGeometry? contentPadding, ShapeBorder? shape, Color? tileColor, Color? selectedTileColor})',
        'https://api.flutter.dev/flutter/material/RadioListTile-class.html'),
    'clipoval': Accordion(
        'ClipOval',
        'A widget that clips its child using an oval.\nClipOval({Key? key, CustomClipper<Rect>? clipper, Clip clipBehavior, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/ClipOval-class.html'),
    'circularprogressindicator': Accordion(
        'CircularProgressIndicator',
        'A material design circular progress indicator, which spins to indicate that the application is busy.\nCircularProgressIndicator({Key? key, double? value, Color? backgroundColor, Color? color, Animation<Color?>? valueColor, double strokeWidth, String? semanticsLabel, String? semanticsValue})',
        'https://api.flutter.dev/flutter/material/CircularProgressIndicator-class.html'),
    'linearprogressindicator': Accordion(
        'LinearProgressIndicator',
        'A material design linear progress indicator, also known as a progress bar.\nLinearProgressIndicator({Key? key, double? value, Color? backgroundColor, Color? color, Animation<Color?>? valueColor, double? minHeight, String? semanticsLabel, String? semanticsValue})',
        'https://api.flutter.dev/flutter/material/LinearProgressIndicator-class.html'),
    'bottomnavigationbar': Accordion(
        'BottomNavigationBar',
        'A material widget that\'s displayed at the bottom of an app for selecting among a small number of views, typically between three and five.\nBottomNavigationBar({Key? key, required List<BottomNavigationBarItem> items, ValueChanged<int>? onTap, int currentIndex, double? elevation, BottomNavigationBarType? type, Color? fixedColor, Color? backgroundColor, double iconSize, Color? selectedItemColor, Color? unselectedItemColor, IconThemeData? selectedIconTheme, IconThemeData? unselectedIconTheme, double selectedFontSize, double unselectedFontSize, TextStyle? selectedLabelStyle, TextStyle? unselectedLabelStyle, bool? showSelectedLabels, bool? showUnselectedLabels, MouseCursor? mouseCursor, bool? enableFeedback})',
        'https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html'),
    'drawer': Accordion(
        'Drawer',
        'A material design panel that slides in horizontally from the edge of a Scaffold to show navigation links in an application.\nDrawer({Key? key, double elevation, Widget? child, String? semanticLabel})',
        'https://api.flutter.dev/flutter/material/Drawer-class.html'),
    'enddrawer': Accordion(
        'endDrawer',
        'A panel displayed to the side of the body, often hidden on mobile devices. Swipes in from right-to-left (TextDirection.ltr) or left-to-right (TextDirection.rtl).\nendDrawer: Drawer()',
        'https://api.flutter.dev/flutter/material/Scaffold/endDrawer.html'),
    'rotatedbox': Accordion(
        'RotatedBox',
        'A widget that rotates its child by a integral number of quarter turns.\nRotatedBox({Key? key, required int quarterTurns, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/RotatedBox-class.html'),
    'simpledialog': Accordion(
        'SimpleDialog',
        'A simple material design dialog.\nSimpleDialog({Key? key, Widget? title, EdgeInsetsGeometry titlePadding, TextStyle? titleTextStyle, List<Widget>? children, EdgeInsetsGeometry contentPadding, Color? backgroundColor, double? elevation, String? semanticLabel, EdgeInsets insetPadding, Clip clipBehavior, ShapeBorder? shape})',
        'https://api.flutter.dev/flutter/material/SimpleDialog-class.html'),
    'expanded': Accordion(
        'Expanded',
        'A widget that expands a child of a Row, Column, or Flex so that the child fills the available space.\nExpanded({Key? key, int flex = 1, required Widget child})',
        'https://api.flutter.dev/flutter/widgets/Expanded-class.html'),
    'defaulttabcontroller': Accordion(
        'DefaultTabController',
        'he TabController for descendant widgets that don\'t specify one explicitly.\nDefaultTabController({Key? key, required int length, int initialIndex, required Widget child})',
        'https://api.flutter.dev/flutter/material/DefaultTabController-class.html'),
    'colortween': Accordion(
        'ColorTween',
        'An interpolation between two colors.\nColorTween({Color? begin, Color? end})',
        'https://api.flutter.dev/flutter/animation/ColorTween-class.html'),
    'inkwell': Accordion(
        'InkWell',
        'A rectangular area of a Material that responds to touch.\nInkWell({Key? key, Widget? child, GestureTapCallback? onTap, GestureTapCallback? onDoubleTap, GestureLongPressCallback? onLongPress, GestureTapDownCallback? onTapDown, GestureTapCancelCallback? onTapCancel, ValueChanged<bool>? onHighlightChanged, ValueChanged<bool>? onHover, MouseCursor? mouseCursor, Color? focusColor, Color? hoverColor, Color? highlightColor, MaterialStateProperty<Color?>? overlayColor, Color? splashColor, InteractiveInkFeatureFactory? splashFactory, double? radius, BorderRadius? borderRadius, ShapeBorder? customBorder, bool? enableFeedback = true, bool excludeFromSemantics = false, FocusNode? focusNode, bool canRequestFocus = true, ValueChanged<bool>? onFocusChange, bool autofocus = false})',
        'https://api.flutter.dev/flutter/material/InkWell-class.html'),
    'hslcolor': Accordion(
        'HSLColor',
        'A color represented using alpha, hue, saturation, and lightness.\nHSLColor.fromAHSL(double alpha, double hue, double saturation, double lightness)',
        'https://api.flutter.dev/flutter/painting/HSLColor-class.html'),
    'hsvcolor': Accordion(
        'HSVColor',
        'A color represented using alpha, hue, saturation, and value.\nHSVColor.fromAHSV(double alpha, double hue, double saturation, double value)',
        'https://api.flutter.dev/flutter/painting/HSVColor-class.html'),
    'canvas': Accordion(
        'Canvas',
        'An interface for recording graphical operations.\nCanvas(PictureRecorder recorder, [Rect? cullRect])',
        'https://api.flutter.dev/flutter/dart-ui/Canvas-class.html'),
    'directionality': Accordion(
        'Directionality',
        'A widget that determines the ambient directionality of text and text-direction-sensitive render objects.\nDirectionality({Key? key, required TextDirection textDirection, required Widget child})',
        'https://api.flutter.dev/flutter/widgets/Directionality-class.html'),
    'gesturedetector': Accordion(
        'GestureDetector',
        'A widget that detects gestures.\nGestureDetector({Key? key, Widget? child, GestureTapDownCallback? onTapDown, GestureTapUpCallback? onTapUp, GestureTapCallback? onTap, GestureTapCancelCallback? onTapCancel, GestureTapCallback? onSecondaryTap, GestureTapDownCallback? onSecondaryTapDown, GestureTapUpCallback? onSecondaryTapUp, GestureTapCancelCallback? onSecondaryTapCancel, GestureTapDownCallback? onTertiaryTapDown, GestureTapUpCallback? onTertiaryTapUp, GestureTapCancelCallback? onTertiaryTapCancel, GestureTapDownCallback? onDoubleTapDown, GestureTapCallback? onDoubleTap, GestureTapCancelCallback? onDoubleTapCancel, GestureLongPressCallback? onLongPress, GestureLongPressStartCallback? onLongPressStart, GestureLongPressMoveUpdateCallback? onLongPressMoveUpdate, GestureLongPressUpCallback? onLongPressUp, GestureLongPressEndCallback? onLongPressEnd, GestureLongPressCallback? onSecondaryLongPress, GestureLongPressStartCallback? onSecondaryLongPressStart, GestureLongPressMoveUpdateCallback? onSecondaryLongPressMoveUpdate, GestureLongPressUpCallback? onSecondaryLongPressUp, GestureLongPressEndCallback? onSecondaryLongPressEnd, GestureDragDownCallback? onVerticalDragDown, GestureDragStartCallback? onVerticalDragStart, GestureDragUpdateCallback? onVerticalDragUpdate, GestureDragEndCallback? onVerticalDragEnd, GestureDragCancelCallback? onVerticalDragCancel, GestureDragDownCallback? onHorizontalDragDown, GestureDragStartCallback? onHorizontalDragStart, GestureDragUpdateCallback? onHorizontalDragUpdate, GestureDragEndCallback? onHorizontalDragEnd, GestureDragCancelCallback? onHorizontalDragCancel, GestureForcePressStartCallback? onForcePressStart, GestureForcePressPeakCallback? onForcePressPeak, GestureForcePressUpdateCallback? onForcePressUpdate, GestureForcePressEndCallback? onForcePressEnd, GestureDragDownCallback? onPanDown, GestureDragStartCallback? onPanStart, GestureDragUpdateCallback? onPanUpdate, GestureDragEndCallback? onPanEnd, GestureDragCancelCallback? onPanCancel, GestureScaleStartCallback? onScaleStart, GestureScaleUpdateCallback? onScaleUpdate, GestureScaleEndCallback? onScaleEnd, HitTestBehavior? behavior, bool excludeFromSemantics, DragStartBehavior dragStartBehavior})',
        'https://api.flutter.dev/flutter/widgets/GestureDetector-class.html'),
    'visibility': Accordion(
        'Visibility',
        'Whether to show or hide a child.\nVisibility({Key? key, required Widget child, Widget replacement, bool visible, bool maintainState, bool maintainAnimation, bool maintainSize, bool maintainSemantics, bool maintainInteractivity})',
        'https://api.flutter.dev/flutter/widgets/Visibility-class.html'),
    'customscrollview': Accordion(
        'CustomScrollView',
        'A ScrollView that creates custom scroll effects using slivers.\nCustomScrollView({Key? key, Axis scrollDirection = Axis.vertical, bool reverse = false, ScrollController? controller, bool? primary, ScrollPhysics? physics, ScrollBehavior? scrollBehavior, bool shrinkWrap = false, Key? center, double anchor = 0.0, double? cacheExtent, List<Widget> slivers, int? semanticChildCount, DragStartBehavior dragStartBehavior = DragStartBehavior.start, ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual, String? restorationId, Clip clipBehavior = Clip.hardEdge})',
        'https://api.flutter.dev/flutter/widgets/CustomScrollView-class.html'),
    'animatedlist': Accordion(
        'AnimatedList',
        'A scrolling container that animates items when they are inserted or removed.\nAnimatedList({Key? key, required AnimatedListItemBuilder itemBuilder, int initialItemCount, Axis scrollDirection, bool reverse, ScrollController? controller, bool? primary, ScrollPhysics? physics, bool shrinkWrap, EdgeInsetsGeometry? padding, Clip clipBehavior})',
        'https://api.flutter.dev/flutter/widgets/AnimatedList-class.html'),
    'sliverappbar': Accordion(
        'SliverAppBar',
        'A material design app bar that integrates with a CustomScrollView.\nSliverAppBar({Key? key, Widget? leading, bool automaticallyImplyLeading, Widget? title, List<Widget>? actions, Widget? flexibleSpace, PreferredSizeWidget? bottom, double? elevation, Color? shadowColor, bool forceElevated, Color? backgroundColor, Color? foregroundColor, Brightness? brightness, IconThemeData? iconTheme, IconThemeData? actionsIconTheme, TextTheme? textTheme, bool primary, bool? centerTitle, bool excludeHeaderSemantics, double? titleSpacing, double? collapsedHeight, double? expandedHeight, bool floating, bool pinned, bool snap, bool stretch, double stretchTriggerOffset, AsyncCallback? onStretchTrigger, ShapeBorder? shape, double toolbarHeight, double? leadingWidth, bool? backwardsCompatibility, TextStyle? toolbarTextStyle, TextStyle? titleTextStyle, SystemUiOverlayStyle? systemOverlayStyle})',
        'https://api.flutter.dev/flutter/material/SliverAppBar-class.html'),
    'bottomappbar': Accordion(
        'BottomAppBar',
        'A container that is typically used with Scaffold.bottomNavigationBar, and can have a notch along the top that makes room for an overlapping FloatingActionButton.\nBottomAppBar({Key? key, Color? color, double? elevation, NotchedShape? shape, Clip clipBehavior, double notchMargin, Widget? child})',
        'https://api.flutter.dev/flutter/material/BottomAppBar-class.html'),
    'appbartheme': Accordion(
        'AppBarTheme',
        'Overrides the default values of visual properties for descendant AppBar widgets.\nAppBarTheme({Brightness? brightness, Color? color, Color? backgroundColor, Color? foregroundColor, double? elevation, Color? shadowColor, IconThemeData? iconTheme, IconThemeData? actionsIconTheme, TextTheme? textTheme, bool? centerTitle, double? titleSpacing, TextStyle? toolbarTextStyle, TextStyle? titleTextStyle, SystemUiOverlayStyle? systemOverlayStyle, bool? backwardsCompatibility})',
        'https://api.flutter.dev/flutter/material/AppBarTheme-class.html'),
    'slivergrid': Accordion(
        'SliverGrid',
        'A sliver that places multiple box children in a two dimensional arrangement.\nSliverGrid({Key? key, required SliverChildDelegate delegate, required SliverGridDelegate gridDelegate})',
        'https://api.flutter.dev/flutter/widgets/SliverGrid-class.html'),
    'sliverlist': Accordion(
        'SliverList',
        'A sliver that places multiple box children in a linear array along the main axis.\nSliverList({Key? key, required SliverChildDelegate delegate})',
        'https://api.flutter.dev/flutter/widgets/SliverList-class.html'),
    'banner': Accordion(
        'Banner',
        'Displays a diagonal message above the corner of another widget.\nBanner({Key? key, Widget? child, required String message, TextDirection? textDirection, required BannerLocation location, TextDirection? layoutDirection, Color color, TextStyle textStyle})',
        'https://api.flutter.dev/flutter/widgets/Banner-class.html'),
    'materia': Accordion(
        'Material',
        'A piece of material.\nMaterial({Key? key, MaterialType type, double elevation, Color? color, Color? shadowColor, TextStyle? textStyle, BorderRadiusGeometry? borderRadius, ShapeBorder? shape, bool borderOnForeground, Clip clipBehavior, Duration animationDuration, Widget? child})',
        'https://api.flutter.dev/flutter/material/Material-class.html'),
    'materialbanner': Accordion(
        'MaterialBanner',
        'A Material Design banner.\nMaterialBanner({Key? key, required Widget content, TextStyle? contentTextStyle, required List<Widget> actions, Widget? leading, Color? backgroundColor, EdgeInsetsGeometry? padding, EdgeInsetsGeometry? leadingPadding, bool forceActionsBelow, OverflowBarAlignment overflowAlignment})',
        'https://api.flutter.dev/flutter/material/MaterialBanner-class.html'),
    'tabbar': Accordion(
        'TabBar',
        'A material design widget that displays a horizontal row of tabs.\nTabBar({Key? key, required List<Widget> tabs, TabController? controller, bool isScrollable, Color? indicatorColor, bool automaticIndicatorColorAdjustment, double indicatorWeight, EdgeInsetsGeometry indicatorPadding, Decoration? indicator, TabBarIndicatorSize? indicatorSize, Color? labelColor, TextStyle? labelStyle, EdgeInsetsGeometry? labelPadding, Color? unselectedLabelColor, TextStyle? unselectedLabelStyle, DragStartBehavior dragStartBehavior, MaterialStateProperty<Color?>? overlayColor, MouseCursor? mouseCursor, bool? enableFeedback, ValueChanged<int>? onTap, ScrollPhysics? physics})',
        'https://api.flutter.dev/flutter/material/TabBar-class.html'),
    'tabbarview': Accordion(
        'TabBarView',
        'A page view that displays the widget which corresponds to the currently selected tab.\nTabBarView({Key? key, required List<Widget> children, TabController? controller, ScrollPhysics? physics, DragStartBehavior dragStartBehavior})',
        'https://api.flutter.dev/flutter/material/TabBarView-class.html'),
    'safearea': Accordion(
        'SafeArea',
        'A widget that insets its child by sufficient padding to avoid intrusions by the operating system.\nSafeArea({Key? key, bool left, bool top, bool right, bool bottom, EdgeInsets minimum, bool maintainBottomViewPadding, required Widget child})',
        'https://api.flutter.dev/flutter/widgets/SafeArea-class.html'),
    'sliversafearea': Accordion(
        'SliverSafeArea',
        'A sliver that insets another sliver by sufficient padding to avoid intrusions by the operating system.\nSliverSafeArea({Key? key, bool left, bool top, bool right, bool bottom, EdgeInsets minimum, required Widget sliver})',
        'https://api.flutter.dev/flutter/widgets/SliverSafeArea-class.html'),
    'placeholder': Accordion(
        'Placeholder',
        'A widget that draws a box that represents where other widgets will one day be added.\nPlaceholder({Key? key, Color color, double strokeWidth, double fallbackWidth, double fallbackHeight})',
        'https://api.flutter.dev/flutter/widgets/Placeholder-class.html'),
    'rawimage': Accordion(
        'RawImage',
        'A widget that displays a dart:ui.Image directly.\nRawImage({Key? key, Image? image, String? debugImageLabel, double? width, double? height, double scale, Color? color, BlendMode? colorBlendMode, BoxFit? fit, AlignmentGeometry alignment, ImageRepeat repeat, Rect? centerSlice, bool matchTextDirection, bool invertColors, FilterQuality filterQuality, bool isAntiAlias})',
        'https://api.flutter.dev/flutter/widgets/RawImage-class.html'),
    'rawkeyboardlistener': Accordion(
        'RawKeyboardListener',
        'A widget that calls a callback whenever the user presses or releases a key on a keyboard.\nRawKeyboardListener({Key? key, required FocusNode focusNode, bool autofocus, bool includeSemantics, ValueChanged<RawKeyEvent>? onKey, required Widget child})',
        'https://api.flutter.dev/flutter/widgets/RawKeyboardListener-class.html'),
    'futurebuilder': Accordion(
        'FutureBuilder',
        'Widget that builds itself based on the latest snapshot of interaction with a Future.\nFutureBuilder({Key? key, Future<T>? future, T? initialData, required AsyncWidgetBuilder<T> builder})',
        'https://api.flutter.dev/flutter/widgets/FutureBuilder-class.html'),
    'animatedalign': Accordion(
        'AnimatedAlign',
        'Animated version of Align which automatically transitions the child\'s position over a given duration whenever the given alignment changes.\nAnimatedAlign({Key? key, required AlignmentGeometry alignment, Widget? child, double? heightFactor, double? widthFactor, Curve curve = Curves.linear, required Duration duration, VoidCallback? onEnd})',
        'https://api.flutter.dev/flutter/widgets/AnimatedAlign-class.html'),
    'animatedbuilder': Accordion(
        'AnimatedBuilder',
        'A general-purpose widget for building animations.\nAnimatedBuilder({Key? key, required Listenable animation, required TransitionBuilder builder, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/AnimatedBuilder-class.html'),
    'animatedcontainer': Accordion(
        'AnimatedContainer',
        'Animated version of Container that gradually changes its values over a period of time.\nAnimatedContainer({Key? key, AlignmentGeometry? alignment, EdgeInsetsGeometry? padding, Color? color, Decoration? decoration, Decoration? foregroundDecoration, double? width, double? height, BoxConstraints? constraints, EdgeInsetsGeometry? margin, Matrix4? transform, AlignmentGeometry? transformAlignment, Widget? child, Clip clipBehavior, Curve curve = Curves.linear, required Duration duration, VoidCallback? onEnd})',
        'https://api.flutter.dev/flutter/widgets/AnimatedContainer-class.html'),
    'animatedcrossfade': Accordion(
        'AnimatedCrossFade',
        'A widget that cross-fades between two given children and animates itself between their sizes.\nAnimatedCrossFade({Key? key, required Widget firstChild, required Widget secondChild, Curve firstCurve, Curve secondCurve, Curve sizeCurve, AlignmentGeometry alignment, required CrossFadeState crossFadeState, required Duration duration, Duration? reverseDuration, AnimatedCrossFadeBuilder layoutBuilder})',
        'https://api.flutter.dev/flutter/widgets/AnimatedCrossFade-class.html'),
    'animateddefaulttextstyle': Accordion(
        'AnimatedDefaultTextStyle',
        'Animated version of DefaultTextStyle which automatically transitions the default text style (the text style to apply to descendant Text widgets without explicit style) over a given duration whenever the given style changes.\nAnimatedDefaultTextStyle({Key? key, required Widget child, required TextStyle style, TextAlign? textAlign, bool softWrap, TextOverflow overflow, int? maxLines, TextWidthBasis textWidthBasis, TextHeightBehavior? textHeightBehavior, Curve curve = Curves.linear, required Duration duration, VoidCallback? onEnd})',
        'https://api.flutter.dev/flutter/widgets/AnimatedDefaultTextStyle-class.html'),
    'animatedliststate': Accordion(
        'AnimatedListState',
        'The state for a scrolling container that animates items when they are inserted or removed.\nAnimatedListState()',
        'https://api.flutter.dev/flutter/widgets/AnimatedDefaultTextStyle-class.html'),
    'animatedmodalbarrier': Accordion(
        'AnimatedModalBarrier',
        'A widget that prevents the user from interacting with widgets behind itself, and can be configured with an animated color value.\nAnimatedModalBarrier({Key? key, required Animation<Color?> color, bool dismissible, String? semanticsLabel, bool? barrierSemanticsDismissible})',
        'https://api.flutter.dev/flutter/widgets/AnimatedModalBarrier-class.html'),
    'animatedopacity': Accordion(
        'AnimatedOpacity',
        'Animated version of Opacity which automatically transitions the child\'s opacity over a given duration whenever the given opacity changes.\nAnimatedOpacity({Key? key, Widget? child, required double opacity, Curve curve = Curves.linear, required Duration duration, VoidCallback? onEnd, bool alwaysIncludeSemantics})',
        'https://api.flutter.dev/flutter/widgets/AnimatedOpacity-class.html'),
    'animatedpadding': Accordion(
        'AnimatedPadding',
        'Animated version of Padding which automatically transitions the indentation over a given duration whenever the given inset changes.\nAnimatedPadding({Key? key, required EdgeInsetsGeometry padding, Widget? child, Curve curve = Curves.linear, required Duration duration, VoidCallback? onEnd})',
        'https://api.flutter.dev/flutter/widgets/AnimatedPadding-class.html'),
    'animatedphysicalmodel': Accordion(
        'AnimatedPhysicalModel',
        'Animated version of PhysicalModel.\nAnimatedPhysicalModel({Key? key, required Widget child, required BoxShape shape, Clip clipBehavior, BorderRadius borderRadius, required double elevation, required Color color, bool animateColor, required Color shadowColor, bool animateShadowColor, Curve curve = Curves.linear, required Duration duration, VoidCallback? onEnd})',
        'https://api.flutter.dev/flutter/widgets/AnimatedPhysicalModel-class.html'),
    'animatedpositioned': Accordion(
        'AnimatedPositioned',
        'Animated version of Positioned which automatically transitions the child\'s position over a given duration whenever the given position changes.\nAnimatedPositioned({Key? key, required Widget child, double? left, double? top, double? right, double? bottom, double? width, double? height, Curve curve = Curves.linear, required Duration duration, VoidCallback? onEnd})\nOnly works if it\'s the child of a Stack.',
        'https://api.flutter.dev/flutter/widgets/AnimatedPositioned-class.html'),
    'animatedsize': Accordion(
        'AnimatedSize',
        'Animated widget that automatically transitions its size over a given duration whenever the given child\'s size changes.\nAnimatedSize({Key? key, Widget? child, AlignmentGeometry alignment, Curve curve, required Duration duration, Duration? reverseDuration, required TickerProvider vsync, Clip clipBehavior})',
        'https://api.flutter.dev/flutter/widgets/AnimatedSize-class.html'),
    'animatedwidget': Accordion(
        'AnimatedWidget',
        'A widget that rebuilds when the given Listenable changes value.\nAnimatedWidget({Key? key, required Listenable listenable})',
        'https://api.flutter.dev/flutter/widgets/AnimatedWidget-class.html'),
    'slidetransition': Accordion(
        'SlideTransition',
        'Animates the position of a widget relative to its normal position.\nSlideTransition({Key? key, required Animation<Offset> position, bool transformHitTests, TextDirection? textDirection, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/SlideTransition-class.html'),
    'sizetransition': Accordion(
        'SizeTransition',
        'Animates its own size and clips and aligns its child.\nSizeTransition({Key? key, Axis axis, required Animation<double> sizeFactor, double axisAlignment, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/SizeTransition-class.html'),
    'scaletransition': Accordion(
        'ScaleTransition',
        'Animates its own size and clips and aligns its child.\nSizeTransition({Key? key, Axis axis, required Animation<double> sizeFactor, double axisAlignment, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/SizeTransition-class.html'),
    'rotationtransition': Accordion(
        'RotationTransition',
        'Animates the rotation of a widget.\nRotationTransition({Key? key, required Animation<double> turns, Alignment alignment, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/RotationTransition-class.html'),
    'positionedtransition': Accordion(
        'PositionedTransition',
        'Animated version of Positioned which takes a specific Animation<RelativeRect> to transition the child\'s position from a start position to an end position over the lifetime of the animation.\nPositionedTransition({Key? key, required Animation<RelativeRect> rect, required Widget child})',
        'https://api.flutter.dev/flutter/widgets/PositionedTransition-class.html'),
    'hero': Accordion(
        'Hero',
        'A widget that marks its child as being a candidate for hero animations.\nHero({Key? key, required Object tag, CreateRectTween? createRectTween, HeroFlightShuttleBuilder? flightShuttleBuilder, HeroPlaceholderBuilder? placeholderBuilder, bool transitionOnUserGestures, required Widget child})',
        'https://api.flutter.dev/flutter/widgets/Hero-class.html'),
    'fadetransition': Accordion(
        'FadeTransition',
        'Animates the opacity of a widget.\nFadeTransition({Key? key, required Animation<double> opacity, bool alwaysIncludeSemantics, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/FadeTransition-class.html'),
    'decoratedboxtransition': Accordion(
        'DecoratedBoxTransition',
        'Animated version of a DecoratedBox that animates the different properties of its Decoration.\nDecoratedBoxTransition({Key? key, required Animation<Decoration> decoration, DecorationPosition position, required Widget child})',
        'https://api.flutter.dev/flutter/widgets/DecoratedBoxTransition-class.html'),
    'backdropfilter': Accordion(
        'BackdropFilter',
        'A widget that applies a filter to the existing painted content and then paints child.\nBackdropFilter({Key? key, required ImageFilter filter, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/BackdropFilter-class.html'),
    'custompaint': Accordion(
        'CustomPaint',
        'A widget that provides a canvas on which to draw during the paint phase.\nCustomPaint({Key? key, CustomPainter? painter, CustomPainter? foregroundPainter, Size size, bool isComplex, bool willChange, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/CustomPaint-class.html'),
    'decoratedbox': Accordion(
        'DecoratedBox',
        'A widget that paints a Decoration either before or after its child paints.\nDecoratedBox({Key? key, required Decoration decoration, DecorationPosition position, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/DecoratedBox-class.html'),
    'fractionaltranslation': Accordion(
        'FractionalTranslation',
        'Applies a translation transformation before painting its child.\nFractionalTranslation({Key? key, required Offset translation, bool transformHitTests, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/FractionalTranslation-class.html'),
    'transform': Accordion(
        'Transform',
        'A widget that applies a transformation before painting its child.\nTransform({Key? key, required Matrix4 transform, Offset? origin, AlignmentGeometry? alignment, bool transformHitTests, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/Transform-class.html'),
    'tabcontroller': Accordion(
        'TabController',
        'Coordinates tab selection between a TabBar and a TabBarView.\nTabController({int initialIndex = 0, required int length, required TickerProvider vsync})',
        'https://api.flutter.dev/flutter/material/TabController-class.html'),
    'tabpageselector': Accordion(
        'TabPageSelector',
        'Displays a row of small circular indicators, one per tab.\nTabPageSelector({Key? key, TabController? controller, double indicatorSize, Color? color, Color? selectedColor})',
        'https://api.flutter.dev/flutter/material/TabPageSelector-class.html'),
    'widgetsapp': Accordion(
        'WidgetsApp',
        'A convenience widget that wraps a number of widgets that are commonly required for an application.\nWidgetsApp({Key? key, GlobalKey<NavigatorState>? navigatorKey, RouteFactory? onGenerateRoute, InitialRouteListFactory? onGenerateInitialRoutes, RouteFactory? onUnknownRoute, List<NavigatorObserver> navigatorObservers, String? initialRoute, PageRouteFactory? pageRouteBuilder, Widget? home, Map<String, WidgetBuilder> routes, TransitionBuilder? builder, String title, GenerateAppTitle? onGenerateTitle, TextStyle? textStyle, required Color color, Locale? locale, Iterable<LocalizationsDelegate>? localizationsDelegates, LocaleListResolutionCallback? localeListResolutionCallback, LocaleResolutionCallback? localeResolutionCallback, Iterable<Locale> supportedLocales, bool showPerformanceOverlay, bool checkerboardRasterCacheImages, bool checkerboardOffscreenLayers, bool showSemanticsDebugger, bool debugShowWidgetInspector, bool debugShowCheckedModeBanner, InspectorSelectButtonBuilder? inspectorSelectButtonBuilder, Map<LogicalKeySet, Intent>? shortcuts, Map<Type, Action<Intent>>? actions, String? restorationScopeId})',
        'https://api.flutter.dev/flutter/widgets/WidgetsApp-class.html'),
    'dropdownbutton': Accordion(
        'DropdownButton',
        'A material design button for selecting from a list of items.\nDropdownButton({Key? key, required List<DropdownMenuItem<T>>? items, DropdownButtonBuilder? selectedItemBuilder, T? value, Widget? hint, Widget? disabledHint, ValueChanged<T?>? onChanged, VoidCallback? onTap, int elevation, TextStyle? style, Widget? underline, Widget? icon, Color? iconDisabledColor, Color? iconEnabledColor, double iconSize, bool isDense, bool isExpanded, double? itemHeight, Color? focusColor, FocusNode? focusNode, bool autofocus, Color? dropdownColor, double? menuMaxHeight})',
        'https://api.flutter.dev/flutter/material/DropdownButton-class.html'),
    'showdatepicker': Accordion(
        'showDatePicker',
        'Shows a dialog containing a Material Design date picker.\nFuture<DateTime?> showDatePicker( {required BuildContext context, required DateTime initialDate, required DateTime firstDate, required DateTime lastDate, DateTime? currentDate, DatePickerEntryMode initialEntryMode = DatePickerEntryMode.calendar, SelectableDayPredicate? selectableDayPredicate, String? helpText, String? cancelText, String? confirmText, Locale? locale, bool useRootNavigator = true, RouteSettings? routeSettings, TextDirection? textDirection, TransitionBuilder? builder, DatePickerMode initialDatePickerMode = DatePickerMode.day, String? errorFormatText, String? errorInvalidText, String? fieldHintText, String? fieldLabelText} )',
        'https://api.flutter.dev/flutter/material/showDatePicker.html'),
    'bottomsheet': Accordion(
        'BottomSheet',
        'A material design bottom sheet.\nBottomSheet({Key? key, AnimationController? animationController, bool enableDrag, BottomSheetDragStartHandler? onDragStart, BottomSheetDragEndHandler? onDragEnd, Color? backgroundColor, double? elevation, ShapeBorder? shape, Clip? clipBehavior, required VoidCallback onClosing, required WidgetBuilder builder})',
        'https://api.flutter.dev/flutter/material/BottomSheet-class.html'),
    'expansionpanel': Accordion(
        'ExpansionPanel',
        'A material expansion panel. It has a header and a body and can be either expanded or collapsed. The body of the panel is only visible when it is expanded.\nExpansionPanel({required ExpansionPanelHeaderBuilder headerBuilder, required Widget body, bool isExpanded, bool canTapOnHeader, Color? backgroundColor})',
        'https://api.flutter.dev/flutter/material/ExpansionPanel-class.html'),
    'chip': Accordion(
        'Chip',
        'A material design chip.\nChip({Key? key, Widget? avatar, required Widget label, TextStyle? labelStyle, EdgeInsetsGeometry? labelPadding, Widget? deleteIcon, VoidCallback? onDeleted, Color? deleteIconColor, bool useDeleteButtonTooltip, String? deleteButtonTooltipMessage, BorderSide? side, OutlinedBorder? shape, Clip clipBehavior, FocusNode? focusNode, bool autofocus, Color? backgroundColor, EdgeInsetsGeometry? padding, VisualDensity? visualDensity, MaterialTapTargetSize? materialTapTargetSize, double? elevation, Color? shadowColor})',
        'https://api.flutter.dev/flutter/material/Chip-class.html'),
    'datatable': Accordion(
        'DataTable',
        'A material design data table.\nDataTable({Key? key, required List<DataColumn> columns, int? sortColumnIndex, bool sortAscending, ValueSetter<bool?>? onSelectAll, Decoration? decoration, MaterialStateProperty<Color?>? dataRowColor, double? dataRowHeight, TextStyle? dataTextStyle, MaterialStateProperty<Color?>? headingRowColor, double? headingRowHeight, TextStyle? headingTextStyle, double? horizontalMargin, double? columnSpacing, bool showCheckboxColumn, bool showBottomBorder, double? dividerThickness, required List<DataRow> rows, double? checkboxHorizontalMargin})',
        'https://api.flutter.dev/flutter/material/DataTable-class.html'),
    'dismissible': Accordion(
        'Dismissible',
        'A widget that can be dismissed by dragging in the indicated direction.\nDismissible({required Key key, required Widget child, Widget? background, Widget? secondaryBackground, ConfirmDismissCallback? confirmDismiss, VoidCallback? onResize, DismissDirectionCallback? onDismissed, DismissDirection direction, Duration? resizeDuration, Map<DismissDirection, double> dismissThresholds, Duration movementDuration, double crossAxisEndOffset, DragStartBehavior dragStartBehavior, HitTestBehavior behavior})',
        'https://api.flutter.dev/flutter/widgets/Dismissible-class.html'),
    'pageroutebuilder': Accordion(
        'PageRouteBuilder',
        'A utility class for defining one-off page routes in terms of callbacks.\nPageRouteBuilder({RouteSettings? settings, required RoutePageBuilder pageBuilder, RouteTransitionsBuilder transitionsBuilder, Duration transitionDuration, Duration reverseTransitionDuration, bool opaque, bool barrierDismissible, Color? barrierColor, String? barrierLabel, bool maintainState, bool fullscreenDialog = false})',
        'https://api.flutter.dev/flutter/widgets/PageRouteBuilder-class.html'),
    'backbutton': Accordion(
        'BackButton',
        'A material design back button.\nBackButton({Key? key, Color? color, VoidCallback? onPressed})',
        'https://api.flutter.dev/flutter/material/BackButton-class.html'),
    'materialapp': Accordion(
        'MaterialApp',
        'An application that uses material design.\nMaterialApp({Key? key, GlobalKey<NavigatorState>? navigatorKey, GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey, Widget? home, Map<String, WidgetBuilder> routes, String? initialRoute, RouteFactory? onGenerateRoute, InitialRouteListFactory? onGenerateInitialRoutes, RouteFactory? onUnknownRoute, List<NavigatorObserver> navigatorObservers, TransitionBuilder? builder, String title, GenerateAppTitle? onGenerateTitle, Color? color, ThemeData? theme, ThemeData? darkTheme, ThemeData? highContrastTheme, ThemeData? highContrastDarkTheme, ThemeMode? themeMode, Locale? locale, Iterable<LocalizationsDelegate>? localizationsDelegates, LocaleListResolutionCallback? localeListResolutionCallback, LocaleResolutionCallback? localeResolutionCallback, Iterable<Locale> supportedLocales, bool debugShowMaterialGrid, bool showPerformanceOverlay, bool checkerboardRasterCacheImages, bool checkerboardOffscreenLayers, bool showSemanticsDebugger, bool debugShowCheckedModeBanner, Map<LogicalKeySet, Intent>? shortcuts, Map<Type, Action<Intent>>? actions, String? restorationScopeId, ScrollBehavior? scrollBehavior})',
        'https://api.flutter.dev/flutter/material/MaterialApp-class.html'),
    'widgetspan': Accordion(
        'WidgetSpan',
        'An immutable widget that is embedded inline within text.\nWidgetSpan({required Widget child, PlaceholderAlignment alignment = ui.PlaceholderAlignment.bottom, TextBaseline? baseline, TextStyle? style})',
        'https://api.flutter.dev/flutter/widgets/WidgetSpan-class.html'),
    'draggable': Accordion(
        'Draggable',
        'A widget that can be dragged from to a DragTarget.\nDraggable({Key? key, required Widget child, required Widget feedback, T? data, Axis? axis, Widget? childWhenDragging, Offset feedbackOffset, @Deprecated(\'Use dragAnchorStrategy instead. '
            'Replace "dragAnchor: DragAnchor.child" with "dragAnchorStrategy: childDragAnchorStrategy". '
            'Replace "dragAnchor: DragAnchor.pointer" with "dragAnchorStrategy: pointerDragAnchorStrategy". '
            'This feature was deprecated after v2.1.0-10.0.pre.\') DragAnchor dragAnchor, DragAnchorStrategy? dragAnchorStrategy, Axis? affinity, int? maxSimultaneousDrags, VoidCallback? onDragStarted, DragUpdateCallback? onDragUpdate, DraggableCanceledCallback? onDraggableCanceled, DragEndCallback? onDragEnd, VoidCallback? onDragCompleted, bool ignoringFeedbackSemantics, bool rootOverlay, HitTestBehavior hitTestBehavior})',
        'https://api.flutter.dev/flutter/widgets/Draggable-class.html'),
    'fadeimage': Accordion(
        'FadeInImage',
        'An image that shows a placeholder image while the target image is loading, then fades in the new image when it loads.\nFadeInImage({Key? key, required ImageProvider<Object> placeholder, ImageErrorWidgetBuilder? placeholderErrorBuilder, required ImageProvider<Object> image, ImageErrorWidgetBuilder? imageErrorBuilder, bool excludeFromSemantics, String? imageSemanticLabel, Duration fadeOutDuration, Curve fadeOutCurve, Duration fadeInDuration, Curve fadeInCurve, double? width, double? height, BoxFit? fit, AlignmentGeometry alignment, ImageRepeat repeat, bool matchTextDirection})',
        'https://api.flutter.dev/flutter/widgets/FadeInImage-class.html'),
    'tootip': Accordion(
        'Tooltip',
        'A material design tooltip.\nTooltip({Key? key, required String message, double? height, EdgeInsetsGeometry? padding, EdgeInsetsGeometry? margin, double? verticalOffset, bool? preferBelow, bool? excludeFromSemantics, Decoration? decoration, TextStyle? textStyle, Duration? waitDuration, Duration? showDuration, Widget? child})',
        'https://api.flutter.dev/flutter/material/Tooltip-class.html'),
    'cupertinoactivityindicator': Accordion(
        'CupertinoActivityIndicator',
        'AAn iOS-style activity indicator that spins clockwise.\nCupertinoActivityIndicator({Key? key, bool animating, double radius})',
        'https://api.flutter.dev/flutter/cupertino/CupertinoActivityIndicator-class.html'),
    'edgeinsets': Accordion(
        'EdgeInsets',
        'An immutable set of offsets in each of the four cardinal directions.\nEdgeInsets.all(double value)\nEdgeInsets.only({double left, double top, double right, double bottom})\nEdgeInsets.symmetric({double vertical = 0.0, double horizontal = 0.0})\nEdgeInsets.fromLTRB(double left, double top, double right, double bottom)\nEdgeInsets.fromWindowPadding(WindowPadding padding, double devicePixelRatio)',
        'https://api.flutter.dev/flutter/painting/EdgeInsets-class.html'),
    'valuelistenablebuilder': Accordion(
        'ValueListenableBuilder',
        'A widget whose content stays synced with a ValueListenable.\nValueListenableBuilder({Key? key, required ValueListenable<T> valueListenable, required ValueWidgetBuilder<T> builder, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/ValueListenableBuilder-class.html'),
    'indexwhere': Accordion(
        'indexWhere',
        'Searches the list from index start to the end of the list. The first time an object o is encountered so that test(o) is true, the index of o is returned.\nnotes.indexWhere((note) => note.startsWith(\'k\'))',
        'https://api.flutter.dev/flutter/dart-core/List/indexWhere.html'),
    'repaintboundary': Accordion(
        'RepaintBoundary',
        'A widget that creates a separate display list for its child.\nRepaintBoundary({Key? key, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/RepaintBoundary-class.html'),
    'listview.builder': Accordion(
        'ListView.builder',
        'Creates a scrollable, linear array of widgets that are created on demand.\nListView.builder({Key? key, Axis scrollDirection = Axis.vertical, bool reverse = false, ScrollController? controller, bool? primary, ScrollPhysics? physics, bool shrinkWrap = false, EdgeInsetsGeometry? padding, double? itemExtent, required IndexedWidgetBuilder itemBuilder, int? itemCount, bool addAutomaticKeepAlives = true, bool addRepaintBoundaries = true, bool addSemanticIndexes = true, double? cacheExtent, int? semanticChildCount, DragStartBehavior dragStartBehavior = DragStartBehavior.start, ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual, String? restorationId, Clip clipBehavior = Clip.hardEdge})',
        'https://api.flutter.dev/flutter/widgets/ListView/ListView.builder.html'),
    'selectabletext': Accordion(
        'SelectableText',
        'A run of selectable text with a single style.\nSelectableText(String data, {Key? key, FocusNode? focusNode, TextStyle? style, StrutStyle? strutStyle, TextAlign? textAlign, TextDirection? textDirection, double? textScaleFactor, bool showCursor, bool autofocus, ToolbarOptions? toolbarOptions, int? minLines, int? maxLines, double cursorWidth, double? cursorHeight, Radius? cursorRadius, Color? cursorColor, DragStartBehavior dragStartBehavior, bool enableInteractiveSelection, TextSelectionControls? selectionControls, GestureTapCallback? onTap, ScrollPhysics? scrollPhysics, TextHeightBehavior? textHeightBehavior, TextWidthBasis? textWidthBasis, SelectionChangedCallback? onSelectionChanged})\nSelectableText.rich(TextSpan textSpan, {Key? key, FocusNode? focusNode, TextStyle? style, StrutStyle? strutStyle, TextAlign? textAlign, TextDirection? textDirection, double? textScaleFactor, bool showCursor, bool autofocus, ToolbarOptions? toolbarOptions, int? minLines, int? maxLines, double cursorWidth, double? cursorHeight, Radius? cursorRadius, Color? cursorColor, DragStartBehavior dragStartBehavior, bool enableInteractiveSelection, TextSelectionControls? selectionControls, GestureTapCallback? onTap, ScrollPhysics? scrollPhysics, TextHeightBehavior? textHeightBehavior, TextWidthBasis? textWidthBasis, SelectionChangedCallback? onSelectionChanged})',
        'https://api.flutter.dev/flutter/material/SelectableText-class.html'),
    'circleavatar': Accordion(
        'CircleAvatar',
        'A circle that represents a user.\nCircleAvatar({Key? key, Widget? child, Color? backgroundColor, ImageProvider<Object>? backgroundImage, ImageProvider<Object>? foregroundImage, ImageErrorListener? onBackgroundImageError, ImageErrorListener? onForegroundImageError, Color? foregroundColor, double? radius, double? minRadius, double? maxRadius})',
        'https://api.flutter.dev/flutter/material/CircleAvatar-class.html'),
    'assetimage': Accordion(
        'AssetImage',
        'Fetches an image from an AssetBundle, having determined the exact image to use based on the context.\nAssetImage(String assetName, {AssetBundle? bundle, String? package})',
        'https://api.flutter.dev/flutter/painting/AssetImage-class.html'),
    'mediaquery': Accordion(
        'MediaQuery',
        'Establishes a subtree in which media queries resolve to the given data.\nMediaQuery({Key? key, required MediaQueryData data, required Widget child})\n'
            'MediaQuery.removePadding({Key? key, required BuildContext context, bool removeLeft = false, bool removeTop = false, bool removeRight = false, bool removeBottom = false, required Widget child})\n'
            'MediaQuery.removeViewInsets({Key? key, required BuildContext context, bool removeLeft = false, bool removeTop = false, bool removeRight = false, bool removeBottom = false, required Widget child})\n'
            'MediaQuery.removeViewPadding({Key? key, required BuildContext context, bool removeLeft = false, bool removeTop = false, bool removeRight = false, bool removeBottom = false, required Widget child})',
        'https://api.flutter.dev/flutter/widgets/MediaQuery-class.html'),
    'colorfiltered': Accordion(
        'ColorFiltered',
        'Applies a ColorFilter to its child.\nColorFiltered({required ColorFilter colorFilter, Widget? child, Key? key})',
        'https://api.flutter.dev/flutter/widgets/ColorFiltered-class.html'),
    'pageview': Accordion(
        'PageView',
        'A scrollable list that works page by page.\nPageView({Key? key, Axis scrollDirection, bool reverse, PageController? controller, ScrollPhysics? physics, bool pageSnapping, ValueChanged<int>? onPageChanged, List<Widget> children = const <Widget>[], DragStartBehavior dragStartBehavior, bool allowImplicitScrolling, String? restorationId, Clip clipBehavior, ScrollBehavior? scrollBehavior})\nPageView.builder({Key? key, Axis scrollDirection, bool reverse, PageController? controller, ScrollPhysics? physics, bool pageSnapping, ValueChanged<int>? onPageChanged, required IndexedWidgetBuilder itemBuilder, int? itemCount, DragStartBehavior dragStartBehavior, bool allowImplicitScrolling, String? restorationId, Clip clipBehavior, ScrollBehavior? scrollBehavior})\nPageView.custom({Key? key, Axis scrollDirection, bool reverse, PageController? controller, ScrollPhysics? physics, bool pageSnapping, ValueChanged<int>? onPageChanged, required SliverChildDelegate childrenDelegate, DragStartBehavior dragStartBehavior, bool allowImplicitScrolling, String? restorationId, Clip clipBehavior, ScrollBehavior? scrollBehavior})',
        'https://api.flutter.dev/flutter/widgets/PageView-class.html'),
    'table': Accordion(
        'Table',
        'A widget that uses the table layout algorithm for its children.\nTable({Key? key, List<TableRow> children, Map<int, TableColumnWidth>? columnWidths, TableColumnWidth defaultColumnWidth, TextDirection? textDirection, TableBorder? border, TableCellVerticalAlignment defaultVerticalAlignment, TextBaseline? textBaseline})',
        'https://api.flutter.dev/flutter/widgets/Table-class.html'),
    'inheritedmodel': Accordion(
        'InheritedModel',
        'An InheritedWidget that\'s intended to be used as the base class for models whose dependents may only depend on one part or "aspect" of the overall model.\nInheritedModel({Key? key, required Widget child})',
        'https://api.flutter.dev/flutter/widgets/InheritedModel-class.html'),
    'fittedbox': Accordion(
        'FittedBox',
        'Scales and positions its child within itself according to fit.\nFittedBox({Key? key, BoxFit fit, AlignmentGeometry alignment, Clip clipBehavior, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/FittedBox-class.html'),
    'layoutbuilder': Accordion(
        'LayoutBuilder',
        'Builds a widget tree that can depend on the parent widget\'s size.\nLayoutBuilder({Key? key, required LayoutWidgetBuilder builder})',
        'https://api.flutter.dev/flutter/widgets/LayoutBuilder-class.html'),
    'positioned': Accordion(
        'Positioned',
        'A widget that controls where a child of a Stack is positioned.\nPositioned({Key? key, double? left, double? top, double? right, double? bottom, double? width, double? height, required Widget child})',
        'https://api.flutter.dev/flutter/widgets/Positioned-class.html'),
    'flexible': Accordion(
        'Flexible',
        'A widget that controls how a child of a Row, Column, or Flex flexes.\nFlexible({Key? key, int flex, FlexFit fit, required Widget child})',
        'https://api.flutter.dev/flutter/widgets/Flexible-class.html'),
    'spacer': Accordion(
        'Spacer',
        'Spacer creates an adjustable, empty spacer that can be used to tune the spacing between widgets in a Flex container, like Row or Column.\nSpacer({Key? key, int flex})',
        'https://api.flutter.dev/flutter/widgets/Spacer-class.html'),
    'refreshindicator': Accordion(
        'RefreshIndicator',
        'A widget that supports the Material "swipe to refresh" idiom.\n RefreshIndicator({Key? key, required Widget child, double displacement, double edgeOffset, required RefreshCallback onRefresh, Color? color, Color? backgroundColor, ScrollNotificationPredicate notificationPredicate, String? semanticsLabel, String? semanticsValue, double strokeWidth, RefreshIndicatorTriggerMode triggerMode})',
        'https://api.flutter.dev/flutter/material/RefreshIndicator-class.html'),
    'factory': Accordion(
        'Factory',
        'A factory interface that also reports the type of the created objects.\nFactory(ValueGetter<T> constructor)',
        'https://api.flutter.dev/flutter/foundation/Factory-class.html'),
    'willpopscope': Accordion(
        'WillPopScope',
        'Registers a callback to veto attempts by the user to dismiss the enclosing ModalRoute.\nWillPopScope({Key? key, required Widget child, required WillPopCallback? onWillPop})',
        'https://api.flutter.dev/flutter/widgets/WillPopScope-class.html'),
    'orientationbuilder': Accordion(
        'OrientationBuilder',
        'Builds a widget tree that can depend on the parent widget\'s orientation (distinct from the device orientation).\nOrientationBuilder({Key? key, required OrientationWidgetBuilder builder})',
        'https://api.flutter.dev/flutter/widgets/OrientationBuilder-class.html'),
    'indexedstack': Accordion(
        'IndexedStack',
        'A Stack that shows a single child from a list of children.\nStack({Key? key, AlignmentGeometry alignment, TextDirection? textDirection, StackFit fit, overflow, Clip clipBehavior, List<Widget> children = const <Widget>[]})',
        'https://api.flutter.dev/flutter/widgets/IndexedStack-class.html'),
    'streambuilder': Accordion(
        'StreamBuilder',
        'Widget that builds itself based on the latest snapshot of interaction with a Stream.\nStreamBuilder({Key? key, T? initialData, Stream<T>? stream, required AsyncWidgetBuilder<T> builder})',
        'https://api.flutter.dev/flutter/widgets/StreamBuilder-class.html'),
    'annotatedregion': Accordion(
        'AnnotatedRegion',
        'Annotates a region of the layer tree with a value.\nAnnotatedRegion({Key? key, required Widget child, required T value, bool sized})',
        'https://api.flutter.dev/flutter/widgets/AnnotatedRegion-class.html'),
    'semantics': Accordion(
        'Semantics',
        'A widget that annotates the widget tree with a description of the meaning of the widgets.\nSemantics({Key? key, Widget? child, bool container = false, bool explicitChildNodes = false, bool excludeSemantics = false, bool? enabled, bool? checked, bool? selected, bool? toggled, bool? button, bool? slider, bool? keyboardKey, bool? link, bool? header, bool? textField, bool? readOnly, bool? focusable, bool? focused, bool? inMutuallyExclusiveGroup, bool? obscured, bool? multiline, bool? scopesRoute, bool? namesRoute, bool? hidden, bool? image, bool? liveRegion, int? maxValueLength, int? currentValueLength, String? label, String? value, String? increasedValue, String? decreasedValue, String? hint, String? onTapHint, String? onLongPressHint, TextDirection? textDirection, SemanticsSortKey? sortKey, SemanticsTag? tagForChildren, VoidCallback? onTap, VoidCallback? onLongPress, VoidCallback? onScrollLeft, VoidCallback? onScrollRight, VoidCallback? onScrollUp, VoidCallback? onScrollDown, VoidCallback? onIncrease, VoidCallback? onDecrease, VoidCallback? onCopy, VoidCallback? onCut, VoidCallback? onPaste, VoidCallback? onDismiss, MoveCursorHandler? onMoveCursorForwardByCharacter, MoveCursorHandler? onMoveCursorBackwardByCharacter, SetSelectionHandler? onSetSelection, SetTextHandler? onSetText, VoidCallback? onDidGainAccessibilityFocus, VoidCallback? onDidLoseAccessibilityFocus, Map<CustomSemanticsAction, VoidCallback>? customSemanticsActions})\n'
            'Semantics.fromProperties({Key? key, Widget? child, bool container, bool explicitChildNodes, bool excludeSemantics, required SemanticsProperties properties})',
        'https://api.flutter.dev/flutter/material/Theme-class.html'),
    'blocksemantics': Accordion(
        'BlockSemantics',
        'A widget that drops the semantics of all widget that were painted before it in the same semantic container.\nBlockSemantics({Key? key, bool blocking, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/BlockSemantics-class.html'),
    'excludesemantics': Accordion(
        'ExcludeSemantics',
        'A widget that drops all the semantics of its descendants.\nExcludeSemantics({Key? key, bool excluding, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/ExcludeSemantics-class.html'),
    'flow': Accordion(
        'Flow',
        'A widget that sizes and positions children efficiently, according to the logic in a FlowDelegate.\nFlow({Key? key, required FlowDelegate delegate, List<Widget> children = const <Widget>[], Clip clipBehavior})\n'
            'Flow.unwrapped({Key? key, required FlowDelegate delegate, List<Widget> children = const <Widget>[], Clip clipBehavior})',
        'https://api.flutter.dev/flutter/widgets/Flow-class.html'),
    'animatedswitcher': Accordion(
        'AnimatedSwitcher',
        'A widget that by default does a cross-fade between a new widget and the widget previously set on the AnimatedSwitcher as a child.\nAnimatedSwitcher({Key? key, Widget? child, required Duration duration, Duration? reverseDuration, Curve switchInCurve, Curve switchOutCurve, AnimatedSwitcherTransitionBuilder transitionBuilder, AnimatedSwitcherLayoutBuilder layoutBuilder})',
        'https://api.flutter.dev/flutter/widgets/AnimatedSwitcher-class.html'),
    'sizedoverflowbox': Accordion(
        'SizedOverflowBox',
        'A widget that is a specific size but passes its original constraints through to its child, which may then overflow.\nSizedOverflowBox({Key? key, required Size size, AlignmentGeometry alignment, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/SizedOverflowBox-class.html'),
    'longpressdraggable': Accordion(
        'LongPressDraggable',
        'Makes its child draggable starting from long press.\nLongPressDraggable({Key? key, required Widget child, required Widget feedback, T? data, Axis? axis, Widget? childWhenDragging, Offset feedbackOffset = Offset.zero',
        'https://api.flutter.dev/flutter/widgets/LongPressDraggable-class.html'),
    'intrinsicwidth': Accordion(
        'IntrinsicWidth',
        'A widget that sizes its child to the child\'s maximum intrinsic width.\nIntrinsicWidth({Key? key, double? stepWidth, double? stepHeight, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/IntrinsicWidth-class.html'),
    'customsinglechildlayout': Accordion(
        'CustomSingleChildLayout',
        'A widget that defers the layout of its single child to a delegate.\nCustomSingleChildLayout({Key? key, required SingleChildLayoutDelegate delegate, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/CustomSingleChildLayout-class.html'),
    'interactiveviewer': Accordion(
        'InteractiveViewer',
        'A widget that enables pan and zoom interactions with its child.\nInteractiveViewer({Key? key, Clip clipBehavior, bool alignPanAxis, EdgeInsets boundaryMargin, bool constrained, double maxScale, double minScale, GestureScaleEndCallback? onInteractionEnd, GestureScaleStartCallback? onInteractionStart, GestureScaleUpdateCallback? onInteractionUpdate, bool panEnabled, bool scaleEnabled, TransformationController? transformationController, required Widget child})',
        'https://api.flutter.dev/flutter/widgets/InteractiveViewer-class.html'),
    'limitedbox': Accordion(
        'LimitedBox',
        'A box that limits its size only when it\'s unconstrained.\nLimitedBox({Key? key, double maxWidth, double maxHeight, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/LimitedBox-class.html'),
    'strutstyle': Accordion(
        'StrutStyle',
        'StrutStyle, the class in the painting library.\nStrutStyle({String? fontFamily, List<String>? fontFamilyFallback, double? fontSize, double? height, TextLeadingDistribution? leadingDistribution, double? leading, FontWeight? fontWeight, FontStyle? fontStyle, bool? forceStrutHeight})',
        'https://api.flutter.dev/flutter/dart-ui/StrutStyle-class.html'),
    'togglebuttons': Accordion(
        'ToggleButtons',
        'A widget that applies a mask generated by a Shader to its child.\nToggleButtons({Key? key, required List<Widget> children, required List<bool> isSelected, void onPressed(int index)?, MouseCursor? mouseCursor, TextStyle? textStyle, BoxConstraints? constraints, Color? color, Color? selectedColor, Color? disabledColor, Color? fillColor, Color? focusColor, Color? highlightColor, Color? hoverColor, Color? splashColor, List<FocusNode>? focusNodes, bool renderBorder, Color? borderColor, Color? selectedBorderColor, Color? disabledBorderColor, BorderRadius? borderRadius, double? borderWidth, Axis direction, VerticalDirection verticalDirection})',
        'https://api.flutter.dev/flutter/material/ToggleButtons-class.html'),
    'shadermask': Accordion(
        'ShaderMask',
        'A widget that applies a mask generated by a Shader to its child.\nShaderMask({Key? key, required ShaderCallback shaderCallback, BlendMode blendMode, Widget? child})',
        'https://api.flutter.dev/flutter/widgets/ShaderMask-class.html'),
    'colorfilter': Accordion(
        'ColorFilter',
        'A description of a color filter to apply when drawing a shape or compositing a layer with a particular Paint.',
        'https://api.flutter.dev/flutter/dart-ui/ColorFilter-class.html'),
    'unconstrainedbox': Accordion(
        'UnconstrainedBox',
        'A widget that imposes no constraints on its child, allowing it to render at its "natural" size.\nUnconstrainedBox({Key? key, Widget? child, TextDirection? textDirection, AlignmentGeometry alignment, Axis? constrainedAxis, Clip clipBehavior})',
        'https://api.flutter.dev/flutter/widgets/UnconstrainedBox-class.html'),
    'draggablescrollablesheet': Accordion(
        'DraggableScrollableSheet',
        'A container for a Scrollable that responds to drag gestures by resizing the scrollable until a limit is reached, and then scrolling.\nDraggableScrollableSheet({Key? key, double initialChildSize, double minChildSize, double maxChildSize, bool expand, required ScrollableWidgetBuilder builder})',
        'https://api.flutter.dev/flutter/widgets/DraggableScrollableSheet-class.html'),
    'divider': Accordion(
        'Divider',
        'A thin horizontal line, with padding on either side.\nDivider({Key? key, double? height, double? thickness, double? indent, double? endIndent, Color? color})',
        'https://api.flutter.dev/flutter/material/Divider-class.html'),
    'verticaldivider': Accordion(
        'VerticalDivider',
        'A thin vertical line, with padding on either side.\nVerticalDivider({Key? key, double? width, double? thickness, double? indent, double? endIndent, Color? color})',
        'https://api.flutter.dev/flutter/material/VerticalDivider-class.html'),
    'choicechip': Accordion(
        'ChoiceChip',
        'A material design choice chip.\nChoiceChip({Key? key, Widget? avatar, required Widget label, TextStyle? labelStyle, EdgeInsetsGeometry? labelPadding, ValueChanged<bool>? onSelected, double? pressElevation, required bool selected, Color? selectedColor, Color? disabledColor, String? tooltip, BorderSide? side, OutlinedBorder? shape, Clip clipBehavior, FocusNode? focusNode, bool autofocus, Color? backgroundColor, EdgeInsetsGeometry? padding, VisualDensity? visualDensity, MaterialTapTargetSize? materialTapTargetSize, double? elevation, Color? shadowColor, Color? selectedShadowColor, ShapeBorder avatarBorder})',
        'https://api.flutter.dev/flutter/material/ChoiceChip-class.html'),
    'filterchip': Accordion(
        'FilterChip',
        'A material design filter chip.\nFilterChip({Key? key, Widget? avatar, required Widget label, TextStyle? labelStyle, EdgeInsetsGeometry? labelPadding, bool selected, required ValueChanged<bool>? onSelected, double? pressElevation, Color? disabledColor, Color? selectedColor, String? tooltip, BorderSide? side, OutlinedBorder? shape, Clip clipBehavior, FocusNode? focusNode, bool autofocus, Color? backgroundColor, EdgeInsetsGeometry? padding, VisualDensity? visualDensity, MaterialTapTargetSize? materialTapTargetSize, double? elevation, Color? shadowColor, Color? selectedShadowColor, bool? showCheckmark, Color? checkmarkColor, ShapeBorder avatarBorder})',
        'https://api.flutter.dev/flutter/material/FilterChip-class.html'),
    'inputchip': Accordion(
        'InputChip',
        'A material design input chip.\nInputChip({Key? key, Widget? avatar, required Widget label, TextStyle? labelStyle, EdgeInsetsGeometry? labelPadding, bool selected, bool isEnabled, ValueChanged<bool>? onSelected, Widget? deleteIcon, VoidCallback? onDeleted, Color? deleteIconColor, bool useDeleteButtonTooltip, String? deleteButtonTooltipMessage, VoidCallback? onPressed, double? pressElevation, Color? disabledColor, Color? selectedColor, String? tooltip, BorderSide? side, OutlinedBorder? shape, Clip clipBehavior, FocusNode? focusNode, bool autofocus, Color? backgroundColor, EdgeInsetsGeometry? padding, VisualDensity? visualDensity, MaterialTapTargetSize? materialTapTargetSize, double? elevation, Color? shadowColor, Color? selectedShadowColor, bool? showCheckmark, Color? checkmarkColor, ShapeBorder avatarBorder})',
        'https://api.flutter.dev/flutter/material/InputChip-class.html'),
    'listwheelscrollview': Accordion(
        'ListWheelScrollView',
        'A box in which children on a wheel can be scrolled.\nListWheelScrollView({Key? key, ScrollController? controller, ScrollPhysics? physics, double diameterRatio, double perspective, double offAxisFraction, bool useMagnifier, double magnification, double overAndUnderCenterOpacity, required double itemExtent, double squeeze, ValueChanged<int>? onSelectedItemChanged, bool renderChildrenOutsideViewport, Clip clipBehavior, String? restorationId, ScrollBehavior? scrollBehavior, required List<Widget> children})',
        'https://api.flutter.dev/flutter/widgets/ListWheelScrollView-class.html'),
    'borderside': Accordion(
        'BorderSide',
        'A side of a border of a box.\nBorderSide({Color color, double width, BorderStyle style})',
        'https://api.flutter.dev/flutter/painting/BorderSide-class.html'),
  };
  // This list holds the data for the list view
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
    }
    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  void handleClick(String value) {
    if (value == 'Settings') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              Settings(MyApp.themeNotifier.value == ThemeMode.dark),
        ),
      );
    }
  }

  @override
  void dispose() {
    _ad.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _icons = {'Settings': Icons.settings_outlined};
    return Scaffold(
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
        actions: <Widget>[
          PopupMenuButton(
            onSelected: handleClick,
            itemBuilder: (BuildContext context) {
              return {'Settings'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(_icons[choice],
                          color: MyApp.themeNotifier.value == ThemeMode.dark
                              ? Colors.white
                              : Colors.black),
                      Padding(padding: EdgeInsets.only(left: 10.0)),
                      SizedBox(
                        width: 100.0,
                        child: Text(choice),
                      )
                    ],
                  ),
                );
              }).toList();
            },
          ),
        ],
      ),
      drawer: Drawer(
          child: SingleChildScrollView(
        padding: EdgeInsets.zero,
        child: Column(
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
                      Text('Flutter Dictionary',
                          style: TextStyle(fontSize: 24, color: Colors.white)),
                    ])),
            ListTile(
              leading: Icon(Icons.animation_outlined),
              title: Text('Animation'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnimationItems(),
                  ),
                );
              },
            ),
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
              leading: Icon(Icons.color_lens_outlined),
              title: Text('Color'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ColorItems(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.device_hub_outlined),
              title: Text('Device'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DeviceItems(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.change_circle_outlined),
              title: Text('Functions'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FunctionItems(),
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
              leading: Icon(Icons.list_alt_outlined),
              title: Text('Listtile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListTileItems(),
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
              leading: Icon(Icons.style_outlined),
              title: Text('Style'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StyleItems(),
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
            Wrap(children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 5.0),
              ),
              ActionChip(
                  label: Text('More', style: TextStyle(fontSize: 12)),
                  avatar: Icon(
                    Icons.code,
                    size: 18,
                  ),
                  onPressed: () {
                    var link = 'https://github.com/search?q=flutter';
                    launch(link, forceSafariVC: false);
                  }),
              Padding(
                padding: EdgeInsets.only(left: 5.0),
              ),
              ActionChip(
                  label: Text('About', style: TextStyle(fontSize: 12)),
                  avatar: Icon(
                    Icons.message_outlined,
                    size: 18,
                  ),
                  onPressed: () {
                    showAboutDialog(
                      context: context,
                      applicationIcon: FlutterLogo(),
                      applicationName: 'Flutter Dictionary',
                      applicationVersion: '1.0.1',
                      applicationLegalese: '??2021 luckydesigner.space',
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text(
                                'This is a simple dictionary about Flutter')),
                        Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text(
                                'Telegram Group:t.me/Luckydesignerspace',
                                style: TextStyle(fontSize: 12))),
                      ],
                    );
                  }),
            ]),
          ],
        ),
      )),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: _foundUsers.isNotEmpty
                ? <Widget>[
                    CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 5),
                        autoPlayAnimationDuration: Duration(seconds: 1),
                        height: MediaQuery.of(context).size.width * 0.35,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        },
                      ),
                      items: data.map((item) {
                        return MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              child: Image.asset(item["url"],
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.fill),
                              onTap: () {
                                if (_current == 1) {
                                  Navigator.push<Widget>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          PackageScreen(item["url"]),
                                    ),
                                  );
                                } else if (_current == 0) {
                                  Navigator.push<Widget>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          DartScreen(item["url"]),
                                    ),
                                  );
                                } else if (_current == 2) {
                                  Navigator.push<Widget>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          ToolsScreen(item["url"]),
                                    ),
                                  );
                                } else if (_current == 3) {
                                  Navigator.push<Widget>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          TipsScreen(item["url"]),
                                    ),
                                  );
                                }
                              },
                            ));
                      }).toList(),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text(
                      'Collected $_count items',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w700),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 2.0),
                    ),
                    Container(
                      child: AdWidget(ad: _ad),
                      width: MediaQuery.of(context).size.width,
                      height: 72.0,
                      alignment: Alignment.center,
                    ),
                    ..._foundUsers,
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
                    )),
                  ]),
      ),
    );
  }
}

class Settings extends StatefulWidget {
  final bool themed;
  const Settings(this.themed);
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSwitched = false;
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
          title: const Text('Settings'),
        ),
        body: Scrollbar(
            child: ListView(children: [
          Padding(padding: EdgeInsets.only(top: 20)),
          SettingsGroup(
            settingsGroupTitle: 'System Mode',
            settingsGroupTitleStyle: TextStyle(fontSize: 20),
            iconItemSize: 30,
            items: [
              SettingsItem(
                onTap: () {},
                icons: MyApp.themeNotifier.value == ThemeMode.dark
                    ? Icons.dark_mode_rounded
                    : Icons.light_mode_rounded,
                iconStyle: IconStyle(
                  iconsColor: Colors.white,
                  withBackground: true,
                  backgroundColor: Colors.red,
                ),
                title: 'Dark mode',
                titleStyle: TextStyle(color: Colors.black),
                subtitle: "Automatic",
                trailing: Switch.adaptive(
                  value: widget.themed,
                  onChanged: (value) {
                    isSwitched = value;
                    if (isSwitched == true) {
                      MyApp.themeNotifier.value = ThemeMode.dark;
                    } else {
                      MyApp.themeNotifier.value = ThemeMode.light;
                    }
                  },
                ),
              ),
            ],
          ),
        ])),
      ),
    );
  }
}
