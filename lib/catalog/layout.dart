// ignore_for_file: file_names
import 'accordion.dart';
import 'package:flutter/material.dart';

class Layouts extends StatefulWidget {
  const Layouts({Key? key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Layouts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
            child: Column(children: const <Widget>[
          Accordion(
              'Align',
              'A widget that aligns its child within itself and optionally sizes itself based on the child\'s size.\nAlign({Key? key, AlignmentGeometry alignment, double? widthFactor, double? heightFactor, Widget? child})',
              'https://api.flutter.dev/flutter/widgets/Align-class.html'),
          Accordion(
              'AspectRatio',
              'A widget that attempts to size the child to a specific aspect ratio.\nAspectRatio({Key? key, required double aspectRatio, Widget? child})',
              'https://api.flutter.dev/flutter/widgets/AspectRatio-class.html'),
          Accordion(
              'Baseline',
              'A widget that positions its child according to the child\'s baseline.\nBaseline({Key? key, required double baseline, required TextBaseline baselineType, Widget? child})',
              'https://api.flutter.dev/flutter/widgets/Baseline-class.html'),
          Accordion(
              'Card',
              'A material design card: a panel with slightly rounded corners and an elevation shadow.\nCard({Key? key, Color? color, Color? shadowColor, double? elevation, ShapeBorder? shape, bool borderOnForeground, EdgeInsetsGeometry? margin, Clip? clipBehavior, Widget? child, bool semanticContainer})',
              'https://api.flutter.dev/flutter/widgets/Baseline-class.html'),
          Accordion(
              'Center',
              'A widget that centers its child within itself.\nCenter({Key? key, double? widthFactor, double? heightFactor, Widget? child})',
              'https://api.flutter.dev/flutter/material/Card-class.html'),
          Accordion(
              'Column',
              'A widget that displays its children in a vertical array.\nColumn({Key? key, MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start, MainAxisSize mainAxisSize = MainAxisSize.max, CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center, TextDirection? textDirection, VerticalDirection verticalDirection = VerticalDirection.down, TextBaseline? textBaseline, List<Widget> children = const <Widget>[]})',
              'https://api.flutter.dev/flutter/widgets/Column-class.html'),
          Accordion(
              'ConstrainedBox',
              'A widget that imposes additional constraints on its child.\nConstrainedBox({Key? key, required BoxConstraints constraints, Widget? child})',
              'https://api.flutter.dev/flutter/widgets/ConstrainedBox-class.html'),
          Accordion(
              'Container',
              'A convenience widget that combines common painting, positioning, and sizing widgets.\nContainer({Key? key, AlignmentGeometry? alignment, EdgeInsetsGeometry? padding, Color? color, Decoration? decoration, Decoration? foregroundDecoration, double? width, double? height, BoxConstraints? constraints, EdgeInsetsGeometry? margin, Matrix4? transform, AlignmentGeometry? transformAlignment, Widget? child, Clip clipBehavior})',
              'https://api.flutter.dev/flutter/widgets/Container-class.html'),
          Accordion(
              'ListView',
              'A scrollable list of widgets arranged linearly.\nListView({Key? key, Axis scrollDirection = Axis.vertical, bool reverse = false, ScrollController? controller, bool? primary, ScrollPhysics? physics, bool shrinkWrap = false, EdgeInsetsGeometry? padding, double? itemExtent, bool addAutomaticKeepAlives = true, bool addRepaintBoundaries = true, bool addSemanticIndexes = true, double? cacheExtent, List<Widget> children = const <Widget>[], int? semanticChildCount, DragStartBehavior dragStartBehavior = DragStartBehavior.start, ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual, String? restorationId, Clip clipBehavior = Clip.hardEdge})',
              'https://api.flutter.dev/flutter/widgets/ListView-class.html'),
          Accordion(
              'NavigationRail',
              'A material widget that is meant to be displayed at the left or right of an app to navigate between a small number of views, typically between three and five.\nNavigationRail({Key? key, Color? backgroundColor, bool extended, Widget? leading, Widget? trailing, required List<NavigationRailDestination> destinations, required int selectedIndex, ValueChanged<int>? onDestinationSelected, double? elevation, double? groupAlignment, NavigationRailLabelType? labelType, TextStyle? unselectedLabelTextStyle, TextStyle? selectedLabelTextStyle, IconThemeData? unselectedIconTheme, IconThemeData? selectedIconTheme, double? minWidth, double? minExtendedWidth}))',
              'https://api.flutter.dev/flutter/material/NavigationRail-class.html'),
          Accordion(
              'Padding',
              'A widget that insets its child by the given padding.\nPadding({Key? key, required EdgeInsetsGeometry padding, Widget? child})',
              'https://api.flutter.dev/flutter/widgets/Padding-class.html'),
          Accordion(
              'Row',
              'A widget that displays its children in a horizontal array.\nRow({Key? key, MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start, MainAxisSize mainAxisSize = MainAxisSize.max, CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center, TextDirection? textDirection, VerticalDirection verticalDirection = VerticalDirection.down, TextBaseline? textBaseline, List<Widget> children = const <Widget>[]})',
              'https://api.flutter.dev/flutter/widgets/Row-class.html'),
          Accordion(
              'SizedBox',
              'A box with a specified size.\nSizedBox({Key? key, double? width, double? height, Widget? child})',
              'https://api.flutter.dev/flutter/widgets/SizedBox-class.html'),
          Accordion(
              'Scrollbar',
              'A Material Design scrollbar.\nScrollbar({Key? key, required Widget child, ScrollController? controller, bool? isAlwaysShown, bool? showTrackOnHover, double? hoverThickness, double? thickness, Radius? radius, ScrollNotificationPredicate? notificationPredicate, bool? interactive})',
              'https://api.flutter.dev/flutter/material/Scrollbar-class.html'),
          Accordion(
              'Wrap',
              'A widget that displays its children in multiple horizontal or vertical runs.\nWrap({Key? key, Axis direction, WrapAlignment alignment, double spacing, WrapAlignment runAlignment, double runSpacing, WrapCrossAlignment crossAxisAlignment, TextDirection? textDirection, VerticalDirection verticalDirection, Clip clipBehavior, List<Widget> children = const <Widget>[]})',
              'https://api.flutter.dev/flutter/widgets/Wrap-class.html'),
          Accordion(
              'Stack',
              'A widget that positions its children relative to the edges of its box.\nStack({Key? key, AlignmentGeometry alignment, TextDirection? textDirection, StackFit fit, @Deprecated(\'Use clipBehavior instead. See the migration guide in flutter.dev/go/clip-behavior. '
                  'This feature was deprecated after v1.22.0-12.0.pre.\') Overflow overflow, Clip clipBehavior, List<Widget> children = const <Widget>[]})',
              'https://api.flutter.dev/flutter/widgets/Stack-class.html'),
        ])),
      ),
    );
  }
}
