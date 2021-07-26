// ignore_for_file: prefer_const_constructors, unused_import
import 'index.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

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
    'floatingActionButton': Accordion(
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
    'popupMenuButton': Accordion(
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
    'switchListTile': Accordion(
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
    'showmodalbottomSheet': Accordion(
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
        'A widget that absorbs pointers during hit testing.\nAbsorbPointer({Key? key, bool absorbing, Widget? child, bool? ignoringSemantics})',
        'https://api.flutter.dev/flutter/widgets/AbsorbPointer-class.html'),
    'ignorepointer': Accordion(
        'AbsorbPointer',
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
                padding: EdgeInsets.only(left: 20.0),
              ),
              ActionChip(
                  label: Text('Package', style: TextStyle(fontSize: 12)),
                  avatar: Icon(
                    Icons.library_add_check_outlined,
                    size: 18,
                    color: MyApp.themeNotifier.value == ThemeMode.light
                        ? Colors.black54
                        : Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PackageScreen()));
                  }),
              Padding(
                padding: EdgeInsets.only(left: 5.0),
              ),
              ActionChip(
                  label: Text('More', style: TextStyle(fontSize: 12)),
                  avatar: Icon(
                    Icons.code,
                    size: 18,
                    color: MyApp.themeNotifier.value == ThemeMode.light
                        ? Colors.black54
                        : Colors.white,
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
                    color: MyApp.themeNotifier.value == ThemeMode.light
                        ? Colors.black54
                        : Colors.white,
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
