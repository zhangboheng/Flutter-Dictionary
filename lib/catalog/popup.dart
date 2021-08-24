// ignore_for_file: file_names, prefer_const_constructors, avoid_print
import '../widgettools/accordion.dart';
import 'package:flutter/material.dart';
import '../ad-helper.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Popup extends StatefulWidget {
  const Popup({Key? key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Popup> {
  late BannerAd _ad;
  @override
  void initState() {
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
    super.initState();
  }

  @override
  void dispose() {
    _ad.dispose();

    super.dispose();
  }

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
          title: const Text('Popup'),
        ),
        body: Scrollbar(
          child: SingleChildScrollView(
              child: Column(children: <Widget>[
            Container(
              child: AdWidget(ad: _ad),
              width: MediaQuery.of(context).size.width,
              height: 72.0,
              alignment: Alignment.center,
            ),
            Accordion(
                'AboutDialog',
                'An about box. This is a dialog box with the application\'s icon, name, version number, and copyright, plus a button to show licenses for software used by the application.\nAboutDialog({Key? key, String? applicationName, String? applicationVersion, Widget? applicationIcon, String? applicationLegalese, List<Widget>? children})',
                'https://api.flutter.dev/flutter/material/AboutDialog-class.html'),
            Accordion(
                'AlertDialog',
                'A material design alert dialog.\n({Key? key, Widget? title, EdgeInsetsGeometry? titlePadding, TextStyle? titleTextStyle, Widget? content, EdgeInsetsGeometry contentPadding, TextStyle? contentTextStyle, List<Widget>? actions, EdgeInsetsGeometry actionsPadding, VerticalDirection? actionsOverflowDirection, double? actionsOverflowButtonSpacing, EdgeInsetsGeometry? buttonPadding, Color? backgroundColor, double? elevation, String? semanticLabel, EdgeInsets insetPadding, Clip clipBehavior, ShapeBorder? shape, bool scrollable})',
                'https://api.flutter.dev/flutter/material/AlertDialog-class.html'),
            Accordion(
                'BottomSheet',
                'A material design bottom sheet.\nBottomSheet({Key? key, AnimationController? animationController, bool enableDrag, BottomSheetDragStartHandler? onDragStart, BottomSheetDragEndHandler? onDragEnd, Color? backgroundColor, double? elevation, ShapeBorder? shape, Clip? clipBehavior, required VoidCallback onClosing, required WidgetBuilder builder})',
                'https://api.flutter.dev/flutter/material/BottomSheet-class.html'),
            Accordion(
                'ExpansionPanel',
                'A material expansion panel. It has a header and a body and can be either expanded or collapsed. The body of the panel is only visible when it is expanded.\nExpansionPanel({required ExpansionPanelHeaderBuilder headerBuilder, required Widget body, bool isExpanded, bool canTapOnHeader, Color? backgroundColor})',
                'https://api.flutter.dev/flutter/material/ExpansionPanel-class.html'),
            Accordion(
                'PopupMenuButton',
                'Displays a menu when pressed and calls onSelected when the menu is dismissed because an item was selected. The value passed to onSelected is the value of the selected menu item.\nPopupMenuButton({Key? key, required PopupMenuItemBuilder<T> itemBuilder, T? initialValue, PopupMenuItemSelected<T>? onSelected, PopupMenuCanceled? onCanceled, String? tooltip, double? elevation, EdgeInsetsGeometry padding, Widget? child, Widget? icon, double? iconSize, Offset offset, bool enabled, ShapeBorder? shape, Color? color, bool? enableFeedback})',
                'https://api.flutter.dev/flutter/material/PopupMenuButton-class.html'),
            Accordion(
                'SimpleDialog',
                'A simple material design dialog.\nSimpleDialog({Key? key, Widget? title, EdgeInsetsGeometry titlePadding, TextStyle? titleTextStyle, List<Widget>? children, EdgeInsetsGeometry contentPadding, Color? backgroundColor, double? elevation, String? semanticLabel, EdgeInsets insetPadding, Clip clipBehavior, ShapeBorder? shape})',
                'https://api.flutter.dev/flutter/material/SimpleDialog-class.html'),
            Accordion(
                'SnackBar',
                'A lightweight message with an optional action which briefly displays at the bottom of the screen.\nSnackBar({Key? key, required Widget content, Color? backgroundColor, double? elevation, EdgeInsetsGeometry? margin, EdgeInsetsGeometry? padding, double? width, ShapeBorder? shape, SnackBarBehavior? behavior, SnackBarAction? action, Duration duration, Animation<double>? animation, VoidCallback? onVisible})',
                'https://api.flutter.dev/flutter/material/SnackBar-class.html'),
            Accordion(
                'showModalBottomSheet',
                'Shows a modal material design bottom sheet.\n{required BuildContext context, required WidgetBuilder builder, Color? backgroundColor, double? elevation, ShapeBorder? shape, Clip? clipBehavior, Color? barrierColor, bool isScrollControlled = false, bool useRootNavigator = false, bool isDismissible = true, bool enableDrag = true, RouteSettings? routeSettings, AnimationController? transitionAnimationController}',
                'https://api.flutter.dev/flutter/material/SnackBar-class.html'),
            Accordion(
                'Tooltip',
                'A material design tooltip.\nTooltip({Key? key, required String message, double? height, EdgeInsetsGeometry? padding, EdgeInsetsGeometry? margin, double? verticalOffset, bool? preferBelow, bool? excludeFromSemantics, Decoration? decoration, TextStyle? textStyle, Duration? waitDuration, Duration? showDuration, Widget? child})',
                'https://api.flutter.dev/flutter/material/Tooltip-class.html'),
          ])),
        ),
      ),
    );
  }
}
