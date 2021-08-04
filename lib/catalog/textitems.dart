// ignore_for_file: file_names
import 'accordion.dart';
import 'package:flutter/material.dart';

class TextItems extends StatefulWidget {
  const TextItems({Key? key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<TextItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
            child: Column(children: const <Widget>[
          Accordion(
              'Directionality',
              'A widget that determines the ambient directionality of text and text-direction-sensitive render objects.\nDirectionality({Key? key, required TextDirection textDirection, required Widget child})',
              'https://api.flutter.dev/flutter/widgets/Directionality-class.html'),
          Accordion(
              'RichText',
              'A paragraph of rich text.\nRichText({Key? key, required InlineSpan text, TextAlign textAlign, TextDirection? textDirection, bool softWrap, TextOverflow overflow, double textScaleFactor, int? maxLines, Locale? locale, StrutStyle? strutStyle, TextWidthBasis textWidthBasis, TextHeightBehavior? textHeightBehavior})',
              'https://api.flutter.dev/flutter/widgets/RichText-class.html'),
          Accordion(
              'SelectableText',
              'A run of selectable text with a single style.\nSelectableText(String data, {Key? key, FocusNode? focusNode, TextStyle? style, StrutStyle? strutStyle, TextAlign? textAlign, TextDirection? textDirection, double? textScaleFactor, bool showCursor, bool autofocus, ToolbarOptions? toolbarOptions, int? minLines, int? maxLines, double cursorWidth, double? cursorHeight, Radius? cursorRadius, Color? cursorColor, DragStartBehavior dragStartBehavior, bool enableInteractiveSelection, TextSelectionControls? selectionControls, GestureTapCallback? onTap, ScrollPhysics? scrollPhysics, TextHeightBehavior? textHeightBehavior, TextWidthBasis? textWidthBasis, SelectionChangedCallback? onSelectionChanged})\nSelectableText.rich(TextSpan textSpan, {Key? key, FocusNode? focusNode, TextStyle? style, StrutStyle? strutStyle, TextAlign? textAlign, TextDirection? textDirection, double? textScaleFactor, bool showCursor, bool autofocus, ToolbarOptions? toolbarOptions, int? minLines, int? maxLines, double cursorWidth, double? cursorHeight, Radius? cursorRadius, Color? cursorColor, DragStartBehavior dragStartBehavior, bool enableInteractiveSelection, TextSelectionControls? selectionControls, GestureTapCallback? onTap, ScrollPhysics? scrollPhysics, TextHeightBehavior? textHeightBehavior, TextWidthBasis? textWidthBasis, SelectionChangedCallback? onSelectionChanged})',
              'https://api.flutter.dev/flutter/material/SelectableText-class.html'),
          Accordion(
              'Text',
              'A run of text with a single style.\nText(String data, {Key? key, TextStyle? style, StrutStyle? strutStyle, TextAlign? textAlign, TextDirection? textDirection, Locale? locale, bool? softWrap, TextOverflow? overflow, double? textScaleFactor, int? maxLines, String? semanticsLabel, TextWidthBasis? textWidthBasis, TextHeightBehavior? textHeightBehavior})',
              'https://api.flutter.dev/flutter/widgets/Text-class.html'),
          Accordion(
              'TextFiled',
              'A material design text field.\nTextField({Key? key, TextEditingController? controller, FocusNode? focusNode, InputDecoration? decoration, TextInputType? keyboardType, TextInputAction? textInputAction, TextCapitalization textCapitalization, TextStyle? style, StrutStyle? strutStyle, TextAlign textAlign, TextAlignVertical? textAlignVertical, TextDirection? textDirection, bool readOnly, ToolbarOptions? toolbarOptions, bool? showCursor, bool autofocus, String obscuringCharacter, bool obscureText, bool autocorrect, SmartDashesType? smartDashesType, SmartQuotesType? smartQuotesType, bool enableSuggestions, int? maxLines, int? minLines, bool expands, int? maxLength, @Deprecated(\'Use maxLengthEnforcement parameter which provides more specific '
                  'behavior related to the maxLength limit. '
                  'This feature was deprecated after v1.25.0-5.0.pre.\') bool maxLengthEnforced, MaxLengthEnforcement? maxLengthEnforcement, ValueChanged<String>? onChanged, VoidCallback? onEditingComplete, ValueChanged<String>? onSubmitted, AppPrivateCommandCallback? onAppPrivateCommand, List<TextInputFormatter>? inputFormatters, bool? enabled, double cursorWidth, double? cursorHeight, Radius? cursorRadius, Color? cursorColor, BoxHeightStyle selectionHeightStyle, BoxWidthStyle selectionWidthStyle, Brightness? keyboardAppearance, EdgeInsets scrollPadding, DragStartBehavior dragStartBehavior, bool enableInteractiveSelection, TextSelectionControls? selectionControls, GestureTapCallback? onTap, MouseCursor? mouseCursor, InputCounterWidgetBuilder? buildCounter, ScrollController? scrollController, ScrollPhysics? scrollPhysics, Iterable<String>? autofillHints, String? restorationId})',
              'https://api.flutter.dev/flutter/material/TextField-class.html'),
          Accordion(
              'TextFormField',
              'A material design text field.\nTextField({Key? key, TextEditingController? controller, FocusNode? focusNode, InputDecoration? decoration, TextInputType? keyboardType, TextInputAction? textInputAction, TextCapitalization textCapitalization, TextStyle? style, StrutStyle? strutStyle, TextAlign textAlign, TextAlignVertical? textAlignVertical, TextDirection? textDirection, bool readOnly, ToolbarOptions? toolbarOptions, bool? showCursor, bool autofocus, String obscuringCharacter, bool obscureText, bool autocorrect, SmartDashesType? smartDashesType, SmartQuotesType? smartQuotesType, bool enableSuggestions, int? maxLines, int? minLines, bool expands, int? maxLength, @Deprecated(\'Use maxLengthEnforcement parameter which provides more specific \' \'behavior related to the maxLength limit. \' \'This feature was deprecated after v1.25.0-5.0.pre.\') bool maxLengthEnforced, MaxLengthEnforcement? maxLengthEnforcement, ValueChanged<String>? onChanged, VoidCallback? onEditingComplete, ValueChanged<String>? onSubmitted, AppPrivateCommandCallback? onAppPrivateCommand, List<TextInputFormatter>? inputFormatters, bool? enabled, double cursorWidth, double? cursorHeight, Radius? cursorRadius, Color? cursorColor, BoxHeightStyle selectionHeightStyle, BoxWidthStyle selectionWidthStyle, Brightness? keyboardAppearance, EdgeInsets scrollPadding, DragStartBehavior dragStartBehavior, bool enableInteractiveSelection, TextSelectionControls? selectionControls, GestureTapCallback? onTap, MouseCursor? mouseCursor, InputCounterWidgetBuilder? buildCounter, ScrollController? scrollController, ScrollPhysics? scrollPhysics, Iterable<String>? autofillHints, String? restorationId})',
              'https://api.flutter.dev/flutter/painting/TextSpan-class.html'),
          Accordion(
              'TextSpan',
              'An immutable span of text.\nTextSpan({String? text, List<InlineSpan>? children, TextStyle? style, GestureRecognizer? recognizer, MouseCursor? mouseCursor, PointerEnterEventListener? onEnter, PointerExitEventListener? onExit, String? semanticsLabel})',
              'https://api.flutter.dev/flutter/painting/TextSpan-class.html'),
          Accordion(
              'WidgetSpan',
              'An immutable widget that is embedded inline within text.\nWidgetSpan({required Widget child, PlaceholderAlignment alignment = ui.PlaceholderAlignment.bottom, TextBaseline? baseline, TextStyle? style})',
              'https://api.flutter.dev/flutter/widgets/WidgetSpan-class.html'),
        ])),
      ),
    );
  }
}
