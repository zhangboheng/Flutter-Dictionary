// ignore_for_file: file_names
import '../widgettools/accordion.dart';
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
        toolbarHeight: 70,
        centerTitle: true,
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
              'AppBar',
              'A material design app bar.\nAppBar({Key? key, Widget? leading, bool automaticallyImplyLeading, Widget? title, List<Widget>? actions, Widget? flexibleSpace, PreferredSizeWidget? bottom, double? elevation, Color? shadowColor, ShapeBorder? shape, Color? backgroundColor, Color? foregroundColor, Brightness? brightness, IconThemeData? iconTheme, IconThemeData? actionsIconTheme, TextTheme? textTheme, bool primary, bool? centerTitle, bool excludeHeaderSemantics, double? titleSpacing, double toolbarOpacity, double bottomOpacity, double? toolbarHeight, double? leadingWidth, bool? backwardsCompatibility, TextStyle? toolbarTextStyle, TextStyle? titleTextStyle, SystemUiOverlayStyle? systemOverlayStyle})',
              'https://api.flutter.dev/flutter/material/AppBar-class.html'),
          Accordion(
              'AspectRatio',
              'A widget that attempts to size the child to a specific aspect ratio.\nAspectRatio({Key? key, required double aspectRatio, Widget? child})',
              'https://api.flutter.dev/flutter/widgets/AspectRatio-class.html'),
          Accordion(
              'Baseline',
              'A widget that positions its child according to the child\'s baseline.\nBaseline({Key? key, required double baseline, required TextBaseline baselineType, Widget? child})',
              'https://api.flutter.dev/flutter/widgets/Baseline-class.html'),
          Accordion(
              'Banner',
              'Displays a diagonal message above the corner of another widget.\nBanner({Key? key, Widget? child, required String message, TextDirection? textDirection, required BannerLocation location, TextDirection? layoutDirection, Color color, TextStyle textStyle})',
              'https://api.flutter.dev/flutter/widgets/Banner-class.html'),
          Accordion(
              'BottomAppBar',
              'A container that is typically used with Scaffold.bottomNavigationBar, and can have a notch along the top that makes room for an overlapping FloatingActionButton.\nBottomAppBar({Key? key, Color? color, double? elevation, NotchedShape? shape, Clip clipBehavior, double notchMargin, Widget? child})',
              'https://api.flutter.dev/flutter/material/BottomAppBar-class.html'),
          Accordion(
              'Center',
              'A widget that centers its child within itself.\nCenter({Key? key, double? widthFactor, double? heightFactor, Widget? child})',
              'https://api.flutter.dev/flutter/widgets/Center-class.html'),
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
              'CustomScrollView',
              'A ScrollView that creates custom scroll effects using slivers.\nCustomScrollView({Key? key, Axis scrollDirection = Axis.vertical, bool reverse = false, ScrollController? controller, bool? primary, ScrollPhysics? physics, ScrollBehavior? scrollBehavior, bool shrinkWrap = false, Key? center, double anchor = 0.0, double? cacheExtent, List<Widget> slivers, int? semanticChildCount, DragStartBehavior dragStartBehavior = DragStartBehavior.start, ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual, String? restorationId, Clip clipBehavior = Clip.hardEdge})',
              'https://api.flutter.dev/flutter/widgets/CustomScrollView-class.html'),
          Accordion(
              'DataTable',
              'A material design data table.\nDataTable({Key? key, required List<DataColumn> columns, int? sortColumnIndex, bool sortAscending, ValueSetter<bool?>? onSelectAll, Decoration? decoration, MaterialStateProperty<Color?>? dataRowColor, double? dataRowHeight, TextStyle? dataTextStyle, MaterialStateProperty<Color?>? headingRowColor, double? headingRowHeight, TextStyle? headingTextStyle, double? horizontalMargin, double? columnSpacing, bool showCheckboxColumn, bool showBottomBorder, double? dividerThickness, required List<DataRow> rows, double? checkboxHorizontalMargin})',
              'https://api.flutter.dev/flutter/material/DataTable-class.html'),
          Accordion(
              'DefaultTabController',
              'he TabController for descendant widgets that don\'t specify one explicitly.\nDefaultTabController({Key? key, required int length, int initialIndex, required Widget child})',
              'https://api.flutter.dev/flutter/material/DefaultTabController-class.html'),
          Accordion(
              'Drawer',
              'A material design panel that slides in horizontally from the edge of a Scaffold to show navigation links in an application.\nDrawer({Key? key, double elevation, Widget? child, String? semanticLabel})',
              'https://api.flutter.dev/flutter/material/Drawer-class.html'),
          Accordion(
              'endDrawer',
              'A panel displayed to the side of the body, often hidden on mobile devices. Swipes in from right-to-left (TextDirection.ltr) or left-to-right (TextDirection.rtl).\nendDrawer: Drawer()',
              'https://api.flutter.dev/flutter/material/Scaffold/endDrawer.html'),
          Accordion(
              'Expanded',
              'A widget that expands a child of a Row, Column, or Flex so that the child fills the available space.\nExpanded({Key? key, int flex = 1, required Widget child})',
              'https://api.flutter.dev/flutter/widgets/Expanded-class.html'),
          Accordion(
              'FittedBox',
              'Scales and positions its child within itself according to fit.\nFittedBox({Key? key, BoxFit fit, AlignmentGeometry alignment, Clip clipBehavior, Widget? child})',
              'https://api.flutter.dev/flutter/widgets/FittedBox-class.html'),
          Accordion(
              'Flexible',
              'A widget that controls how a child of a Row, Column, or Flex flexes.\nFlexible({Key? key, int flex, FlexFit fit, required Widget child})',
              'https://api.flutter.dev/flutter/widgets/Flexible-class.html'),
          Accordion(
              'FlexibleSpaceBar',
              'The part of a material design AppBar that expands, collapses, and stretches.\nFlexibleSpaceBar({Key? key, Widget? title, Widget? background, bool? centerTitle, EdgeInsetsGeometry? titlePadding, CollapseMode collapseMode, List<StretchMode> stretchModes})',
              'https://api.flutter.dev/flutter/material/FlexibleSpaceBar-class.html'),
          Accordion(
              'LayoutBuilder',
              'Builds a widget tree that can depend on the parent widget\'s size.\nLayoutBuilder({Key? key, required LayoutWidgetBuilder builder})',
              'https://api.flutter.dev/flutter/widgets/LayoutBuilder-class.html'),
          Accordion(
              'ListView',
              'A scrollable list of widgets arranged linearly.\nListView({Key? key, Axis scrollDirection = Axis.vertical, bool reverse = false, ScrollController? controller, bool? primary, ScrollPhysics? physics, bool shrinkWrap = false, EdgeInsetsGeometry? padding, double? itemExtent, bool addAutomaticKeepAlives = true, bool addRepaintBoundaries = true, bool addSemanticIndexes = true, double? cacheExtent, List<Widget> children = const <Widget>[], int? semanticChildCount, DragStartBehavior dragStartBehavior = DragStartBehavior.start, ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual, String? restorationId, Clip clipBehavior = Clip.hardEdge})',
              'https://api.flutter.dev/flutter/widgets/ListView-class.html'),
          Accordion(
              'Material',
              'A piece of material.\nMaterial({Key? key, MaterialType type, double elevation, Color? color, Color? shadowColor, TextStyle? textStyle, BorderRadiusGeometry? borderRadius, ShapeBorder? shape, bool borderOnForeground, Clip clipBehavior, Duration animationDuration, Widget? child})',
              'https://api.flutter.dev/flutter/material/Material-class.html'),
          Accordion(
              'MaterialApp',
              'An application that uses material design.\nMaterialApp({Key? key, GlobalKey<NavigatorState>? navigatorKey, GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey, Widget? home, Map<String, WidgetBuilder> routes, String? initialRoute, RouteFactory? onGenerateRoute, InitialRouteListFactory? onGenerateInitialRoutes, RouteFactory? onUnknownRoute, List<NavigatorObserver> navigatorObservers, TransitionBuilder? builder, String title, GenerateAppTitle? onGenerateTitle, Color? color, ThemeData? theme, ThemeData? darkTheme, ThemeData? highContrastTheme, ThemeData? highContrastDarkTheme, ThemeMode? themeMode, Locale? locale, Iterable<LocalizationsDelegate>? localizationsDelegates, LocaleListResolutionCallback? localeListResolutionCallback, LocaleResolutionCallback? localeResolutionCallback, Iterable<Locale> supportedLocales, bool debugShowMaterialGrid, bool showPerformanceOverlay, bool checkerboardRasterCacheImages, bool checkerboardOffscreenLayers, bool showSemanticsDebugger, bool debugShowCheckedModeBanner, Map<LogicalKeySet, Intent>? shortcuts, Map<Type, Action<Intent>>? actions, String? restorationScopeId, ScrollBehavior? scrollBehavior})',
              'https://api.flutter.dev/flutter/material/MaterialApp-class.html'),
          Accordion(
              'MaterialBanner',
              'A Material Design banner.\nMaterialBanner({Key? key, required Widget content, TextStyle? contentTextStyle, required List<Widget> actions, Widget? leading, Color? backgroundColor, EdgeInsetsGeometry? padding, EdgeInsetsGeometry? leadingPadding, bool forceActionsBelow, OverflowBarAlignment overflowAlignment})',
              'https://api.flutter.dev/flutter/material/MaterialBanner-class.html'),
          Accordion(
              'NavigationRail',
              'A material widget that is meant to be displayed at the left or right of an app to navigate between a small number of views, typically between three and five.\nNavigationRail({Key? key, Color? backgroundColor, bool extended, Widget? leading, Widget? trailing, required List<NavigationRailDestination> destinations, required int selectedIndex, ValueChanged<int>? onDestinationSelected, double? elevation, double? groupAlignment, NavigationRailLabelType? labelType, TextStyle? unselectedLabelTextStyle, TextStyle? selectedLabelTextStyle, IconThemeData? unselectedIconTheme, IconThemeData? selectedIconTheme, double? minWidth, double? minExtendedWidth}))',
              'https://api.flutter.dev/flutter/material/NavigationRail-class.html'),
          Accordion(
              'Padding',
              'A widget that insets its child by the given padding.\nPadding({Key? key, required EdgeInsetsGeometry padding, Widget? child})',
              'https://api.flutter.dev/flutter/widgets/Padding-class.html'),
          Accordion(
              'PageView',
              'A scrollable list that works page by page.\nPageView({Key? key, Axis scrollDirection, bool reverse, PageController? controller, ScrollPhysics? physics, bool pageSnapping, ValueChanged<int>? onPageChanged, List<Widget> children = const <Widget>[], DragStartBehavior dragStartBehavior, bool allowImplicitScrolling, String? restorationId, Clip clipBehavior, ScrollBehavior? scrollBehavior})\nPageView.builder({Key? key, Axis scrollDirection, bool reverse, PageController? controller, ScrollPhysics? physics, bool pageSnapping, ValueChanged<int>? onPageChanged, required IndexedWidgetBuilder itemBuilder, int? itemCount, DragStartBehavior dragStartBehavior, bool allowImplicitScrolling, String? restorationId, Clip clipBehavior, ScrollBehavior? scrollBehavior})\nPageView.custom({Key? key, Axis scrollDirection, bool reverse, PageController? controller, ScrollPhysics? physics, bool pageSnapping, ValueChanged<int>? onPageChanged, required SliverChildDelegate childrenDelegate, DragStartBehavior dragStartBehavior, bool allowImplicitScrolling, String? restorationId, Clip clipBehavior, ScrollBehavior? scrollBehavior})',
              'https://api.flutter.dev/flutter/widgets/PageView-class.html'),
          Accordion(
              'Placeholder',
              'A widget that draws a box that represents where other widgets will one day be added.\nPlaceholder({Key? key, Color color, double strokeWidth, double fallbackWidth, double fallbackHeight})',
              'https://api.flutter.dev/flutter/widgets/Placeholder-class.html'),
          Accordion(
              'Positioned',
              'A widget that controls where a child of a Stack is positioned.\nPositioned({Key? key, double? left, double? top, double? right, double? bottom, double? width, double? height, required Widget child})',
              'https://api.flutter.dev/flutter/widgets/Positioned-class.html'),
          Accordion(
              'RotatedBox',
              'A widget that rotates its child by a integral number of quarter turns.\nRotatedBox({Key? key, required int quarterTurns, Widget? child})',
              'https://api.flutter.dev/flutter/widgets/RotatedBox-class.html'),
          Accordion(
              'Row',
              'A widget that displays its children in a horizontal array.\nRow({Key? key, MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start, MainAxisSize mainAxisSize = MainAxisSize.max, CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center, TextDirection? textDirection, VerticalDirection verticalDirection = VerticalDirection.down, TextBaseline? textBaseline, List<Widget> children = const <Widget>[]})',
              'https://api.flutter.dev/flutter/widgets/Row-class.html'),
          Accordion(
              'SafeArea',
              'A widget that insets its child by sufficient padding to avoid intrusions by the operating system.\nSafeArea({Key? key, bool left, bool top, bool right, bool bottom, EdgeInsets minimum, bool maintainBottomViewPadding, required Widget child})',
              'https://api.flutter.dev/flutter/widgets/SafeArea-class.html'),
          Accordion(
              'Scrollbar',
              'A Material Design scrollbar.\nScrollbar({Key? key, required Widget child, ScrollController? controller, bool? isAlwaysShown, bool? showTrackOnHover, double? hoverThickness, double? thickness, Radius? radius, ScrollNotificationPredicate? notificationPredicate, bool? interactive})',
              'https://api.flutter.dev/flutter/material/Scrollbar-class.html'),
          Accordion(
              'SizedBox',
              'A box with a specified size.\nSizedBox({Key? key, double? width, double? height, Widget? child})',
              'https://api.flutter.dev/flutter/widgets/SizedBox-class.html'),
          Accordion(
              'SliverAppBar',
              'A material design app bar that integrates with a CustomScrollView.\nSliverAppBar({Key? key, Widget? leading, bool automaticallyImplyLeading, Widget? title, List<Widget>? actions, Widget? flexibleSpace, PreferredSizeWidget? bottom, double? elevation, Color? shadowColor, bool forceElevated, Color? backgroundColor, Color? foregroundColor, Brightness? brightness, IconThemeData? iconTheme, IconThemeData? actionsIconTheme, TextTheme? textTheme, bool primary, bool? centerTitle, bool excludeHeaderSemantics, double? titleSpacing, double? collapsedHeight, double? expandedHeight, bool floating, bool pinned, bool snap, bool stretch, double stretchTriggerOffset, AsyncCallback? onStretchTrigger, ShapeBorder? shape, double toolbarHeight, double? leadingWidth, bool? backwardsCompatibility, TextStyle? toolbarTextStyle, TextStyle? titleTextStyle, SystemUiOverlayStyle? systemOverlayStyle})',
              'https://api.flutter.dev/flutter/material/SliverAppBar-class.html'),
          Accordion(
              'SliverGrid',
              'A sliver that places multiple box children in a two dimensional arrangement.\nSliverGrid({Key? key, required SliverChildDelegate delegate, required SliverGridDelegate gridDelegate})',
              'https://api.flutter.dev/flutter/widgets/SliverGrid-class.html'),
          Accordion(
              'SliverList',
              'A sliver that places multiple box children in a linear array along the main axis.\nSliverList({Key? key, required SliverChildDelegate delegate})',
              'https://api.flutter.dev/flutter/widgets/SliverList-class.html'),
          Accordion(
              'SliverSafeArea',
              'A sliver that insets another sliver by sufficient padding to avoid intrusions by the operating system.\nSliverSafeArea({Key? key, bool left, bool top, bool right, bool bottom, EdgeInsets minimum, required Widget sliver})',
              'https://api.flutter.dev/flutter/widgets/SliverSafeArea-class.html'),
          Accordion(
              'Spacer',
              'Spacer creates an adjustable, empty spacer that can be used to tune the spacing between widgets in a Flex container, like Row or Column.\nSpacer({Key? key, int flex})',
              'https://api.flutter.dev/flutter/widgets/Spacer-class.html'),
          Accordion(
              'Stack',
              'A widget that positions its children relative to the edges of its box.\nStack({Key? key, AlignmentGeometry alignment, TextDirection? textDirection, StackFit fit, @Deprecated(\'Use clipBehavior instead. See the migration guide in flutter.dev/go/clip-behavior. '
                  'This feature was deprecated after v1.22.0-12.0.pre.\') Overflow overflow, Clip clipBehavior, List<Widget> children = const <Widget>[]})',
              'https://api.flutter.dev/flutter/widgets/Stack-class.html'),
          Accordion(
              'TabBar',
              'A material design widget that displays a horizontal row of tabs.\nTabBar({Key? key, required List<Widget> tabs, TabController? controller, bool isScrollable, Color? indicatorColor, bool automaticIndicatorColorAdjustment, double indicatorWeight, EdgeInsetsGeometry indicatorPadding, Decoration? indicator, TabBarIndicatorSize? indicatorSize, Color? labelColor, TextStyle? labelStyle, EdgeInsetsGeometry? labelPadding, Color? unselectedLabelColor, TextStyle? unselectedLabelStyle, DragStartBehavior dragStartBehavior, MaterialStateProperty<Color?>? overlayColor, MouseCursor? mouseCursor, bool? enableFeedback, ValueChanged<int>? onTap, ScrollPhysics? physics})',
              'https://api.flutter.dev/flutter/material/TabBar-class.html'),
          Accordion(
              'TabBarView',
              'A page view that displays the widget which corresponds to the currently selected tab.\nTabBarView({Key? key, required List<Widget> children, TabController? controller, ScrollPhysics? physics, DragStartBehavior dragStartBehavior})',
              'https://api.flutter.dev/flutter/material/TabBarView-class.html'),
          Accordion(
              'Table',
              'A widget that uses the table layout algorithm for its children.\nTable({Key? key, List<TableRow> children, Map<int, TableColumnWidth>? columnWidths, TableColumnWidth defaultColumnWidth, TextDirection? textDirection, TableBorder? border, TableCellVerticalAlignment defaultVerticalAlignment, TextBaseline? textBaseline})',
              'https://api.flutter.dev/flutter/widgets/Table-class.html'),
          Accordion(
              'TabController',
              'Coordinates tab selection between a TabBar and a TabBarView.\nTabController({int initialIndex = 0, required int length, required TickerProvider vsync})',
              'https://api.flutter.dev/flutter/material/TabController-class.html'),
          Accordion(
              'TabPageSelector',
              'Displays a row of small circular indicators, one per tab.\nTabPageSelector({Key? key, TabController? controller, double indicatorSize, Color? color, Color? selectedColor})',
              'https://api.flutter.dev/flutter/material/TabPageSelector-class.html'),
          Accordion(
              'WidgetsApp',
              'A convenience widget that wraps a number of widgets that are commonly required for an application.\nWidgetsApp({Key? key, GlobalKey<NavigatorState>? navigatorKey, RouteFactory? onGenerateRoute, InitialRouteListFactory? onGenerateInitialRoutes, RouteFactory? onUnknownRoute, List<NavigatorObserver> navigatorObservers, String? initialRoute, PageRouteFactory? pageRouteBuilder, Widget? home, Map<String, WidgetBuilder> routes, TransitionBuilder? builder, String title, GenerateAppTitle? onGenerateTitle, TextStyle? textStyle, required Color color, Locale? locale, Iterable<LocalizationsDelegate>? localizationsDelegates, LocaleListResolutionCallback? localeListResolutionCallback, LocaleResolutionCallback? localeResolutionCallback, Iterable<Locale> supportedLocales, bool showPerformanceOverlay, bool checkerboardRasterCacheImages, bool checkerboardOffscreenLayers, bool showSemanticsDebugger, bool debugShowWidgetInspector, bool debugShowCheckedModeBanner, InspectorSelectButtonBuilder? inspectorSelectButtonBuilder, Map<LogicalKeySet, Intent>? shortcuts, Map<Type, Action<Intent>>? actions, String? restorationScopeId})',
              'https://api.flutter.dev/flutter/widgets/WidgetsApp-class.html'),
          Accordion(
              'Wrap',
              'A widget that displays its children in multiple horizontal or vertical runs.\nWrap({Key? key, Axis direction, WrapAlignment alignment, double spacing, WrapAlignment runAlignment, double runSpacing, WrapCrossAlignment crossAxisAlignment, TextDirection? textDirection, VerticalDirection verticalDirection, Clip clipBehavior, List<Widget> children = const <Widget>[]})',
              'https://api.flutter.dev/flutter/widgets/Wrap-class.html'),
        ])),
      ),
    );
  }
}
