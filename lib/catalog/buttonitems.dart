// ignore_for_file: file_names
import 'accordion.dart';
import 'package:flutter/material.dart';

class ButtonItems extends StatefulWidget {
  const ButtonItems({Key? key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<ButtonItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
            child: Column(children: const <Widget>[
          Accordion(
              'ActionChip',
              'A material design action chip.\nActionChip({Key? key, Widget? avatar, required Widget label, TextStyle? labelStyle, EdgeInsetsGeometry? labelPadding, required VoidCallback onPressed, double? pressElevation, String? tooltip, BorderSide? side, OutlinedBorder? shape, Clip clipBehavior, FocusNode? focusNode, bool autofocus, Color? backgroundColor, EdgeInsetsGeometry? padding, VisualDensity? visualDensity, MaterialTapTargetSize? materialTapTargetSize, double? elevation, Color? shadowColor})',
              'https://api.flutter.dev/flutter/material/ActionChip-class.html'),
          Accordion(
              'BackButton',
              'A material design back button.\nBackButton({Key? key, Color? color, VoidCallback? onPressed})',
              'https://api.flutter.dev/flutter/material/BackButton-class.html'),
          Accordion(
              'BottomNavigationBar',
              'A material widget that\'s displayed at the bottom of an app for selecting among a small number of views, typically between three and five.\nBottomNavigationBar({Key? key, required List<BottomNavigationBarItem> items, ValueChanged<int>? onTap, int currentIndex, double? elevation, BottomNavigationBarType? type, Color? fixedColor, Color? backgroundColor, double iconSize, Color? selectedItemColor, Color? unselectedItemColor, IconThemeData? selectedIconTheme, IconThemeData? unselectedIconTheme, double selectedFontSize, double unselectedFontSize, TextStyle? selectedLabelStyle, TextStyle? unselectedLabelStyle, bool? showSelectedLabels, bool? showUnselectedLabels, MouseCursor? mouseCursor, bool? enableFeedback})',
              'https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html'),
          Accordion(
              'ButtonBar',
              'An end-aligned row of buttons, laying out into a column if there is not enough horizontal space.\nButtonBar({Key? key, MainAxisAlignment? alignment, MainAxisSize? mainAxisSize, ButtonTextTheme? buttonTextTheme, double? buttonMinWidth, double? buttonHeight, EdgeInsetsGeometry? buttonPadding, bool? buttonAlignedDropdown, ButtonBarLayoutBehavior? layoutBehavior, VerticalDirection? overflowDirection, double? overflowButtonSpacing, List<Widget> children})',
              'https://api.flutter.dev/flutter/material/ButtonBar-class.html'),
          Accordion(
              'Card',
              'A material design card: a panel with slightly rounded corners and an elevation shadow.\nCard({Key? key, Color? color, Color? shadowColor, double? elevation, ShapeBorder? shape, bool borderOnForeground, EdgeInsetsGeometry? margin, Clip? clipBehavior, Widget? child, bool semanticContainer})',
              'https://api.flutter.dev/flutter/material/Card-class.html'),
          Accordion(
              'CheckBox',
              'A material design checkbox.\nCheckbox({Key? key, required bool? value, bool tristate, required ValueChanged<bool?>? onChanged, MouseCursor? mouseCursor, Color? activeColor, MaterialStateProperty<Color?>? fillColor, Color? checkColor, Color? focusColor, Color? hoverColor, MaterialStateProperty<Color?>? overlayColor, double? splashRadius, MaterialTapTargetSize? materialTapTargetSize, VisualDensity? visualDensity, FocusNode? focusNode, bool autofocus, OutlinedBorder? shape, BorderSide? side})',
              'https://api.flutter.dev/flutter/material/Checkbox-class.html'),
          Accordion(
              'CupertinoButton',
              'An iOS-style button.\n({Key? key, required Widget child, EdgeInsetsGeometry? padding, Color? color, Color disabledColor, double? minSize, double? pressedOpacity, BorderRadius? borderRadius, AlignmentGeometry alignment, required VoidCallback? onPressed})',
              'https://api.flutter.dev/flutter/cupertino/CupertinoButton-class.html'),
          Accordion(
              'Chip',
              'A material design chip.\nChip({Key? key, Widget? avatar, required Widget label, TextStyle? labelStyle, EdgeInsetsGeometry? labelPadding, Widget? deleteIcon, VoidCallback? onDeleted, Color? deleteIconColor, bool useDeleteButtonTooltip, String? deleteButtonTooltipMessage, BorderSide? side, OutlinedBorder? shape, Clip clipBehavior, FocusNode? focusNode, bool autofocus, Color? backgroundColor, EdgeInsetsGeometry? padding, VisualDensity? visualDensity, MaterialTapTargetSize? materialTapTargetSize, double? elevation, Color? shadowColor})',
              'https://api.flutter.dev/flutter/material/Chip-class.html'),
          Accordion(
              'DropdownButton',
              'A material design button for selecting from a list of items.\nDropdownButton({Key? key, required List<DropdownMenuItem<T>>? items, DropdownButtonBuilder? selectedItemBuilder, T? value, Widget? hint, Widget? disabledHint, ValueChanged<T?>? onChanged, VoidCallback? onTap, int elevation, TextStyle? style, Widget? underline, Widget? icon, Color? iconDisabledColor, Color? iconEnabledColor, double iconSize, bool isDense, bool isExpanded, double? itemHeight, Color? focusColor, FocusNode? focusNode, bool autofocus, Color? dropdownColor, double? menuMaxHeight})',
              'https://api.flutter.dev/flutter/material/DropdownButton-class.html'),
          Accordion(
              'ElevatedButton',
              'A Material Design "elevated button".\n{Key? key, required VoidCallback? onPressed, VoidCallback? onLongPress, ButtonStyle? style, FocusNode? focusNode, bool autofocus = false, Clip clipBehavior = Clip.none, required Widget? child})',
              'https://api.flutter.dev/flutter/material/ElevatedButton-class.html'),
          Accordion(
              'FloatingActionButton',
              'A material design floating action button.\nFloatingActionButton({Key? key, Widget? child, String? tooltip, Color? foregroundColor, Color? backgroundColor, Color? focusColor, Color? hoverColor, Color? splashColor, Object? heroTag, double? elevation, double? focusElevation, double? hoverElevation, double? highlightElevation, double? disabledElevation, required VoidCallback? onPressed, MouseCursor? mouseCursor, bool mini, ShapeBorder? shape, Clip clipBehavior, FocusNode? focusNode, bool autofocus, MaterialTapTargetSize? materialTapTargetSize, bool isExtended})\nFloatingActionButton.extended({Key? key, String? tooltip, Color? foregroundColor, Color? backgroundColor, Color? focusColor, Color? hoverColor, Object? heroTag, double? elevation, double? focusElevation, double? hoverElevation, Color? splashColor, double? highlightElevation, double? disabledElevation, required VoidCallback? onPressed, MouseCursor? mouseCursor, ShapeBorder? shape, bool isExtended, MaterialTapTargetSize? materialTapTargetSize, Clip clipBehavior, FocusNode? focusNode, bool autofocus, Widget? icon, required Widget label})',
              'https://api.flutter.dev/flutter/material/FloatingActionButton-class.html'),
          Accordion(
              'GestureDetector',
              'A widget that detects gestures.\nGestureDetector({Key? key, Widget? child, GestureTapDownCallback? onTapDown, GestureTapUpCallback? onTapUp, GestureTapCallback? onTap, GestureTapCancelCallback? onTapCancel, GestureTapCallback? onSecondaryTap, GestureTapDownCallback? onSecondaryTapDown, GestureTapUpCallback? onSecondaryTapUp, GestureTapCancelCallback? onSecondaryTapCancel, GestureTapDownCallback? onTertiaryTapDown, GestureTapUpCallback? onTertiaryTapUp, GestureTapCancelCallback? onTertiaryTapCancel, GestureTapDownCallback? onDoubleTapDown, GestureTapCallback? onDoubleTap, GestureTapCancelCallback? onDoubleTapCancel, GestureLongPressCallback? onLongPress, GestureLongPressStartCallback? onLongPressStart, GestureLongPressMoveUpdateCallback? onLongPressMoveUpdate, GestureLongPressUpCallback? onLongPressUp, GestureLongPressEndCallback? onLongPressEnd, GestureLongPressCallback? onSecondaryLongPress, GestureLongPressStartCallback? onSecondaryLongPressStart, GestureLongPressMoveUpdateCallback? onSecondaryLongPressMoveUpdate, GestureLongPressUpCallback? onSecondaryLongPressUp, GestureLongPressEndCallback? onSecondaryLongPressEnd, GestureDragDownCallback? onVerticalDragDown, GestureDragStartCallback? onVerticalDragStart, GestureDragUpdateCallback? onVerticalDragUpdate, GestureDragEndCallback? onVerticalDragEnd, GestureDragCancelCallback? onVerticalDragCancel, GestureDragDownCallback? onHorizontalDragDown, GestureDragStartCallback? onHorizontalDragStart, GestureDragUpdateCallback? onHorizontalDragUpdate, GestureDragEndCallback? onHorizontalDragEnd, GestureDragCancelCallback? onHorizontalDragCancel, GestureForcePressStartCallback? onForcePressStart, GestureForcePressPeakCallback? onForcePressPeak, GestureForcePressUpdateCallback? onForcePressUpdate, GestureForcePressEndCallback? onForcePressEnd, GestureDragDownCallback? onPanDown, GestureDragStartCallback? onPanStart, GestureDragUpdateCallback? onPanUpdate, GestureDragEndCallback? onPanEnd, GestureDragCancelCallback? onPanCancel, GestureScaleStartCallback? onScaleStart, GestureScaleUpdateCallback? onScaleUpdate, GestureScaleEndCallback? onScaleEnd, HitTestBehavior? behavior, bool excludeFromSemantics, DragStartBehavior dragStartBehavior})',
              'https://api.flutter.dev/flutter/widgets/GestureDetector-class.html'),
          Accordion(
              'IconButton',
              'A material design icon button.\n({Key? key, double iconSize, VisualDensity? visualDensity, EdgeInsetsGeometry padding, AlignmentGeometry alignment, double? splashRadius, Color? color, Color? focusColor, Color? hoverColor, Color? highlightColor, Color? splashColor, Color? disabledColor, required VoidCallback? onPressed, MouseCursor mouseCursor, FocusNode? focusNode, bool autofocus, String? tooltip, bool enableFeedback, BoxConstraints? constraints, required Widget icon})',
              'https://api.flutter.dev/flutter/material/IconButton-class.html'),
          Accordion(
              'InkWell',
              'A rectangular area of a Material that responds to touch.\nInkWell({Key? key, Widget? child, GestureTapCallback? onTap, GestureTapCallback? onDoubleTap, GestureLongPressCallback? onLongPress, GestureTapDownCallback? onTapDown, GestureTapCancelCallback? onTapCancel, ValueChanged<bool>? onHighlightChanged, ValueChanged<bool>? onHover, MouseCursor? mouseCursor, Color? focusColor, Color? hoverColor, Color? highlightColor, MaterialStateProperty<Color?>? overlayColor, Color? splashColor, InteractiveInkFeatureFactory? splashFactory, double? radius, BorderRadius? borderRadius, ShapeBorder? customBorder, bool? enableFeedback = true, bool excludeFromSemantics = false, FocusNode? focusNode, bool canRequestFocus = true, ValueChanged<bool>? onFocusChange, bool autofocus = false})',
              'https://api.flutter.dev/flutter/material/InkWell-class.html'),
          Accordion(
              'OutlinedButton',
              'A Material Design "Outlined Button"; essentially a TextButton with an outlined border.\n({Key? key, required VoidCallback? onPressed, VoidCallback? onLongPress, ButtonStyle? style, FocusNode? focusNode, bool autofocus = false, Clip clipBehavior = Clip.none, required Widget child})',
              'https://api.flutter.dev/flutter/material/OutlinedButton-class.html'),
          Accordion(
              'Radio',
              'A material design radio button.\nRadio({Key? key, required T value, required T? groupValue, required ValueChanged<T?>? onChanged, MouseCursor? mouseCursor, bool toggleable, Color? activeColor, MaterialStateProperty<Color?>? fillColor, Color? focusColor, Color? hoverColor, MaterialStateProperty<Color?>? overlayColor, double? splashRadius, MaterialTapTargetSize? materialTapTargetSize, VisualDensity? visualDensity, FocusNode? focusNode, bool autofocus})',
              'https://api.flutter.dev/flutter/material/Radio-class.html'),
          Accordion(
              'Radio',
              'A material design radio button.\nRadio({Key? key, required T value, required T? groupValue, required ValueChanged<T?>? onChanged, MouseCursor? mouseCursor, bool toggleable, Color? activeColor, MaterialStateProperty<Color?>? fillColor, Color? focusColor, Color? hoverColor, MaterialStateProperty<Color?>? overlayColor, double? splashRadius, MaterialTapTargetSize? materialTapTargetSize, VisualDensity? visualDensity, FocusNode? focusNode, bool autofocus})',
              'https://api.flutter.dev/flutter/material/Radio-class.html'),
          Accordion(
              'showDatePicker',
              'Shows a dialog containing a Material Design date picker.\nFuture<DateTime?> showDatePicker( {required BuildContext context, required DateTime initialDate, required DateTime firstDate, required DateTime lastDate, DateTime? currentDate, DatePickerEntryMode initialEntryMode = DatePickerEntryMode.calendar, SelectableDayPredicate? selectableDayPredicate, String? helpText, String? cancelText, String? confirmText, Locale? locale, bool useRootNavigator = true, RouteSettings? routeSettings, TextDirection? textDirection, TransitionBuilder? builder, DatePickerMode initialDatePickerMode = DatePickerMode.day, String? errorFormatText, String? errorInvalidText, String? fieldHintText, String? fieldLabelText} )',
              'https://api.flutter.dev/flutter/material/showDatePicker.html'),
          Accordion(
              'Step',
              'A material step used in Stepper. The step can have a title and subtitle, an icon within its circle, some content and a state that governs its styling.\nStep({required Widget title, Widget? subtitle, required Widget content, StepState state, bool isActive})',
              'https://api.flutter.dev/flutter/material/Step-class.html'),
          Accordion(
              'SwitchListTile',
              'A ListTile with a Switch. In other words, a switch with a label.\nSwitchListTile({Key? key, required bool value, required ValueChanged<bool>? onChanged, Color? tileColor, Color? activeColor, Color? activeTrackColor, Color? inactiveThumbColor, Color? inactiveTrackColor, ImageProvider<Object>? activeThumbImage, ImageProvider<Object>? inactiveThumbImage, Widget? title, Widget? subtitle, bool isThreeLine, bool? dense, EdgeInsetsGeometry? contentPadding, Widget? secondary, bool selected, bool autofocus, ListTileControlAffinity controlAffinity, ShapeBorder? shape, Color? selectedTileColor})',
              'https://api.flutter.dev/flutter/material/SwitchListTile-class.html'),
          Accordion(
              'TextButton',
              'A Material Design "Text Button"\n({Key? key, required VoidCallback? onPressed, VoidCallback? onLongPress, ButtonStyle? style, FocusNode? focusNode, bool autofocus = false, Clip clipBehavior = Clip.none, required Widget child})',
              'https://api.flutter.dev/flutter/material/TextButton-class.html'),
        ])),
      ),
    );
  }
}
