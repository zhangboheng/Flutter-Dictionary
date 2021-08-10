// ignore_for_file: file_names, prefer_const_constructors
import '../widgettools/accordion.dart';
import 'package:flutter/material.dart';

class FunctionItems extends StatefulWidget {
  const FunctionItems({Key? key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<FunctionItems> {
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
                'AnimatedListState',
                'The state for a scrolling container that animates items when they are inserted or removed.\nAnimatedListState()',
                'https://api.flutter.dev/flutter/widgets/AnimatedDefaultTextStyle-class.html'),
            Accordion(
                'AnimatedModalBarrier',
                'A widget that prevents the user from interacting with widgets behind itself, and can be configured with an animated color value.\nAnimatedModalBarrier({Key? key, required Animation<Color?> color, bool dismissible, String? semanticsLabel, bool? barrierSemanticsDismissible})',
                'https://api.flutter.dev/flutter/widgets/AnimatedModalBarrier-class.html'),
            Accordion(
                'Autocomplete',
                'A widget for helping the user make a selection by entering some text and choosing from among a list of options.\nAutocomplete({Key? key, required AutocompleteOptionsBuilder<T> optionsBuilder, AutocompleteOptionToString<T> displayStringForOption, AutocompleteFieldViewBuilder fieldViewBuilder, AutocompleteOnSelected<T>? onSelected, AutocompleteOptionsViewBuilder<T>? optionsViewBuilder})',
                'https://api.flutter.dev/flutter/material/Autocomplete-class.html'),
            Accordion(
                'Draggable',
                'A widget that can be dragged from to a DragTarget.\nDraggable({Key? key, required Widget child, required Widget feedback, T? data, Axis? axis, Widget? childWhenDragging, Offset feedbackOffset, @Deprecated(\'Use dragAnchorStrategy instead. '
                    'Replace "dragAnchor: DragAnchor.child" with "dragAnchorStrategy: childDragAnchorStrategy". '
                    'Replace "dragAnchor: DragAnchor.pointer" with "dragAnchorStrategy: pointerDragAnchorStrategy". '
                    'This feature was deprecated after v2.1.0-10.0.pre.\') DragAnchor dragAnchor, DragAnchorStrategy? dragAnchorStrategy, Axis? affinity, int? maxSimultaneousDrags, VoidCallback? onDragStarted, DragUpdateCallback? onDragUpdate, DraggableCanceledCallback? onDraggableCanceled, DragEndCallback? onDragEnd, VoidCallback? onDragCompleted, bool ignoringFeedbackSemantics, bool rootOverlay, HitTestBehavior hitTestBehavior})',
                'https://api.flutter.dev/flutter/widgets/Draggable-class.html'),
            Accordion(
                'Factory',
                'A factory interface that also reports the type of the created objects.\nFactory(ValueGetter<T> constructor)',
                'https://api.flutter.dev/flutter/foundation/Factory-class.html'),
            Accordion(
                'FutureBuilder',
                'Widget that builds itself based on the latest snapshot of interaction with a Future.\nFutureBuilder({Key? key, Future<T>? future, T? initialData, required AsyncWidgetBuilder<T> builder})',
                'https://api.flutter.dev/flutter/widgets/FutureBuilder-class.html'),
            Accordion(
                'IgnorePointer',
                'A widget that is invisible during hit testing.\nIgnorePointer({Key? key, bool ignoring, bool? ignoringSemantics, Widget? child})',
                'https://api.flutter.dev/flutter/widgets/IgnorePointer-class.html'),
            Accordion(
                'indexWhere',
                'Searches the list from index start to the end of the list. The first time an object o is encountered so that test(o) is true, the index of o is returned.\nnotes.indexWhere((note) => note.startsWith(\'k\'))',
                'https://api.flutter.dev/flutter/dart-core/List/indexWhere.html'),
            Accordion(
                'ListView.builder',
                'Creates a scrollable, linear array of widgets that are created on demand.\nListView.builder({Key? key, Axis scrollDirection = Axis.vertical, bool reverse = false, ScrollController? controller, bool? primary, ScrollPhysics? physics, bool shrinkWrap = false, EdgeInsetsGeometry? padding, double? itemExtent, required IndexedWidgetBuilder itemBuilder, int? itemCount, bool addAutomaticKeepAlives = true, bool addRepaintBoundaries = true, bool addSemanticIndexes = true, double? cacheExtent, int? semanticChildCount, DragStartBehavior dragStartBehavior = DragStartBehavior.start, ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual, String? restorationId, Clip clipBehavior = Clip.hardEdge})',
                'https://api.flutter.dev/flutter/widgets/ListView/ListView.builder.html'),
            Accordion(
                'PageRouteBuilder',
                'A utility class for defining one-off page routes in terms of callbacks.\nPageRouteBuilder({RouteSettings? settings, required RoutePageBuilder pageBuilder, RouteTransitionsBuilder transitionsBuilder, Duration transitionDuration, Duration reverseTransitionDuration, bool opaque, bool barrierDismissible, Color? barrierColor, String? barrierLabel, bool maintainState, bool fullscreenDialog = false})',
                'https://api.flutter.dev/flutter/widgets/PageRouteBuilder-class.html'),
            Accordion(
                'RawKeyboardListener',
                'A widget that calls a callback whenever the user presses or releases a key on a keyboard.\nRawKeyboardListener({Key? key, required FocusNode focusNode, bool autofocus, bool includeSemantics, ValueChanged<RawKeyEvent>? onKey, required Widget child})',
                'https://api.flutter.dev/flutter/widgets/RawKeyboardListener-class.html'),
            Accordion(
                'RepaintBoundary',
                'A widget that creates a separate display list for its child.\nRepaintBoundary({Key? key, Widget? child})',
                'https://api.flutter.dev/flutter/widgets/RepaintBoundary-class.html'),
            Accordion(
                'StreamBuilder',
                'Widget that builds itself based on the latest snapshot of interaction with a Stream.\nStreamBuilder({Key? key, T? initialData, Stream<T>? stream, required AsyncWidgetBuilder<T> builder})',
                'https://api.flutter.dev/flutter/widgets/StreamBuilder-class.html'),
            Accordion(
                'WillPopScope',
                'Registers a callback to veto attempts by the user to dismiss the enclosing ModalRoute.\nWillPopScope({Key? key, required Widget child, required WillPopCallback? onWillPop})',
                'https://api.flutter.dev/flutter/widgets/WillPopScope-class.html'),
          ])),
        ),
      ),
    );
  }
}
