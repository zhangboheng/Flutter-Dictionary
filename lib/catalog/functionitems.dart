// ignore_for_file: file_names
import 'accordion.dart';
import 'package:flutter/material.dart';

class FunctionItems extends StatefulWidget {
  const FunctionItems({Key? key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<FunctionItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Functions'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
            child: Column(children: const <Widget>[
          Accordion(
              'AbsorbPointer',
              'A widget that absorbs pointers during hit testing.\nAbsorbPointer({Key? key, bool absorbing, Widget? child, bool? ignoringSemantics})',
              'https://api.flutter.dev/flutter/widgets/AbsorbPointer-class.html'),
          Accordion(
              'AnimatedBuilder',
              'A general-purpose widget for building animations.\nAnimatedBuilder({Key? key, required Listenable animation, required TransitionBuilder builder, Widget? child})',
              'https://api.flutter.dev/flutter/widgets/AnimatedBuilder-class.html'),
          Accordion(
              'Autocomplete',
              'A widget for helping the user make a selection by entering some text and choosing from among a list of options.\nAutocomplete({Key? key, required AutocompleteOptionsBuilder<T> optionsBuilder, AutocompleteOptionToString<T> displayStringForOption, AutocompleteFieldViewBuilder fieldViewBuilder, AutocompleteOnSelected<T>? onSelected, AutocompleteOptionsViewBuilder<T>? optionsViewBuilder})',
              'https://api.flutter.dev/flutter/material/Autocomplete-class.html'),
          Accordion(
              'IgnorePointer',
              'A widget that is invisible during hit testing.\nIgnorePointer({Key? key, bool ignoring, bool? ignoringSemantics, Widget? child})',
              'https://api.flutter.dev/flutter/widgets/IgnorePointer-class.html'),
          Accordion(
              'FutureBuilder',
              'Widget that builds itself based on the latest snapshot of interaction with a Future.\nFutureBuilder({Key? key, Future<T>? future, T? initialData, required AsyncWidgetBuilder<T> builder})',
              'https://api.flutter.dev/flutter/widgets/FutureBuilder-class.html'),
          Accordion(
              'RawKeyboardListener',
              'A widget that calls a callback whenever the user presses or releases a key on a keyboard.\nRawKeyboardListener({Key? key, required FocusNode focusNode, bool autofocus, bool includeSemantics, ValueChanged<RawKeyEvent>? onKey, required Widget child})',
              'https://api.flutter.dev/flutter/widgets/RawKeyboardListener-class.html'),
          Accordion(
              'StreamBuilder',
              'Widget that builds itself based on the latest snapshot of interaction with a Stream.\nStreamBuilder({Key? key, T? initialData, Stream<T>? stream, required AsyncWidgetBuilder<T> builder})',
              'https://api.flutter.dev/flutter/widgets/StreamBuilder-class.html'),
        ])),
      ),
    );
  }
}
