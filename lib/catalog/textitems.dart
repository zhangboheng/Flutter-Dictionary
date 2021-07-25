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
              'Text',
              'A run of text with a single style.\nText(String data, {Key? key, TextStyle? style, StrutStyle? strutStyle, TextAlign? textAlign, TextDirection? textDirection, Locale? locale, bool? softWrap, TextOverflow? overflow, double? textScaleFactor, int? maxLines, String? semanticsLabel, TextWidthBasis? textWidthBasis, TextHeightBehavior? textHeightBehavior})',
              'https://api.flutter.dev/flutter/widgets/Text-class.html'),
          Accordion(
              'TextSpan',
              'An immutable span of text.\nTextSpan({String? text, List<InlineSpan>? children, TextStyle? style, GestureRecognizer? recognizer, MouseCursor? mouseCursor, PointerEnterEventListener? onEnter, PointerExitEventListener? onExit, String? semanticsLabel})',
              'https://api.flutter.dev/flutter/painting/TextSpan-class.html'),
          Accordion(
              'RichText',
              'A paragraph of rich text.\nRichText({Key? key, required InlineSpan text, TextAlign textAlign, TextDirection? textDirection, bool softWrap, TextOverflow overflow, double textScaleFactor, int? maxLines, Locale? locale, StrutStyle? strutStyle, TextWidthBasis textWidthBasis, TextHeightBehavior? textHeightBehavior})',
              'https://api.flutter.dev/flutter/widgets/RichText-class.html'),
        ])),
      ),
    );
  }
}
