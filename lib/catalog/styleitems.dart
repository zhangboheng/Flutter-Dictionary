// ignore_for_file: file_names, prefer_const_constructors, avoid_print
import '../widgettools/accordion.dart';
import 'package:flutter/material.dart';
import '../ad-helper.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class StyleItems extends StatefulWidget {
  const StyleItems({Key? key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<StyleItems> {
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
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: const Text('Style'),
      ),
      body: WillPopScope(
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
        child: Scrollbar(
          child: SingleChildScrollView(
              child: Column(children: <Widget>[
            Container(
              child: AdWidget(ad: _ad),
              width: MediaQuery.of(context).size.width,
              height: 72.0,
              alignment: Alignment.center,
            ),
            Accordion(
                'AppBarTheme',
                'Overrides the default values of visual properties for descendant AppBar widgets.\nAppBarTheme({Brightness? brightness, Color? color, Color? backgroundColor, Color? foregroundColor, double? elevation, Color? shadowColor, IconThemeData? iconTheme, IconThemeData? actionsIconTheme, TextTheme? textTheme, bool? centerTitle, double? titleSpacing, TextStyle? toolbarTextStyle, TextStyle? titleTextStyle, SystemUiOverlayStyle? systemOverlayStyle, bool? backwardsCompatibility})',
                'https://api.flutter.dev/flutter/material/AppBarTheme-class.html'),
            Accordion(
                'BackdropFilter',
                'A widget that applies a filter to the existing painted content and then paints child.\nBackdropFilter({Key? key, required ImageFilter filter, Widget? child})',
                'https://api.flutter.dev/flutter/widgets/BackdropFilter-class.html'),
            Accordion(
                'BlockSemantics',
                'A widget that drops the semantics of all widget that were painted before it in the same semantic container.\nBlockSemantics({Key? key, bool blocking, Widget? child})',
                'https://api.flutter.dev/flutter/widgets/BlockSemantics-class.html'),
            Accordion(
                'BorderSide',
                'A side of a border of a box.\nBorderSide({Color color, double width, BorderStyle style})',
                'https://api.flutter.dev/flutter/painting/BorderSide-class.html'),
            Accordion(
                'ColorFilter',
                'A description of a color filter to apply when drawing a shape or compositing a layer with a particular Paint.',
                'https://api.flutter.dev/flutter/dart-ui/ColorFilter-class.html'),
            Accordion(
                'CustomPaint',
                'A widget that provides a canvas on which to draw during the paint phase.\nCustomPaint({Key? key, CustomPainter? painter, CustomPainter? foregroundPainter, Size size, bool isComplex, bool willChange, Widget? child})',
                'https://api.flutter.dev/flutter/widgets/CustomPaint-class.html'),
            Accordion(
                'DecoratedBox',
                'A widget that paints a Decoration either before or after its child paints.\nDecoratedBox({Key? key, required Decoration decoration, DecorationPosition position, Widget? child})',
                'https://api.flutter.dev/flutter/widgets/DecoratedBox-class.html'),
            Accordion(
                'EdgeInsets',
                'An immutable set of offsets in each of the four cardinal directions.\nEdgeInsets.all(double value)\nEdgeInsets.only({double left, double top, double right, double bottom})\nEdgeInsets.symmetric({double vertical = 0.0, double horizontal = 0.0})\nEdgeInsets.fromLTRB(double left, double top, double right, double bottom)\nEdgeInsets.fromWindowPadding(WindowPadding padding, double devicePixelRatio)',
                'https://api.flutter.dev/flutter/painting/EdgeInsets-class.html'),
            Accordion(
                'ExcludeSemantics',
                'A widget that drops all the semantics of its descendants.\nExcludeSemantics({Key? key, bool excluding, Widget? child})',
                'https://api.flutter.dev/flutter/widgets/ExcludeSemantics-class.html'),
            Accordion(
                'FractionalTranslation',
                'Applies a translation transformation before painting its child.\nFractionalTranslation({Key? key, required Offset translation, bool transformHitTests, Widget? child})',
                'https://api.flutter.dev/flutter/widgets/FractionalTranslation-class.html'),
            Accordion(
                'InheritedModel',
                'An InheritedWidget that\'s intended to be used as the base class for models whose dependents may only depend on one part or "aspect" of the overall model.\nInheritedModel({Key? key, required Widget child})',
                'https://api.flutter.dev/flutter/widgets/InheritedModel-class.html'),
            Accordion(
                'Semantics',
                'A widget that annotates the widget tree with a description of the meaning of the widgets.\nSemantics({Key? key, Widget? child, bool container = false, bool explicitChildNodes = false, bool excludeSemantics = false, bool? enabled, bool? checked, bool? selected, bool? toggled, bool? button, bool? slider, bool? keyboardKey, bool? link, bool? header, bool? textField, bool? readOnly, bool? focusable, bool? focused, bool? inMutuallyExclusiveGroup, bool? obscured, bool? multiline, bool? scopesRoute, bool? namesRoute, bool? hidden, bool? image, bool? liveRegion, int? maxValueLength, int? currentValueLength, String? label, String? value, String? increasedValue, String? decreasedValue, String? hint, String? onTapHint, String? onLongPressHint, TextDirection? textDirection, SemanticsSortKey? sortKey, SemanticsTag? tagForChildren, VoidCallback? onTap, VoidCallback? onLongPress, VoidCallback? onScrollLeft, VoidCallback? onScrollRight, VoidCallback? onScrollUp, VoidCallback? onScrollDown, VoidCallback? onIncrease, VoidCallback? onDecrease, VoidCallback? onCopy, VoidCallback? onCut, VoidCallback? onPaste, VoidCallback? onDismiss, MoveCursorHandler? onMoveCursorForwardByCharacter, MoveCursorHandler? onMoveCursorBackwardByCharacter, SetSelectionHandler? onSetSelection, SetTextHandler? onSetText, VoidCallback? onDidGainAccessibilityFocus, VoidCallback? onDidLoseAccessibilityFocus, Map<CustomSemanticsAction, VoidCallback>? customSemanticsActions})\n'
                    'Semantics.fromProperties({Key? key, Widget? child, bool container, bool explicitChildNodes, bool excludeSemantics, required SemanticsProperties properties})',
                'https://api.flutter.dev/flutter/material/Theme-class.html'),
            Accordion(
                'ShaderMask',
                'A widget that applies a mask generated by a Shader to its child.\nShaderMask({Key? key, required ShaderCallback shaderCallback, BlendMode blendMode, Widget? child})',
                'https://api.flutter.dev/flutter/widgets/ShaderMask-class.html'),
            Accordion(
                'StrutStyle',
                'StrutStyle, the class in the painting library.\nStrutStyle({String? fontFamily, List<String>? fontFamilyFallback, double? fontSize, double? height, TextLeadingDistribution? leadingDistribution, double? leading, FontWeight? fontWeight, FontStyle? fontStyle, bool? forceStrutHeight})',
                'https://api.flutter.dev/flutter/dart-ui/StrutStyle-class.html'),
            Accordion(
                'Theme',
                'Applies a theme to descendant widgets.\nTheme({Key? key, required ThemeData data, required Widget child})',
                'https://api.flutter.dev/flutter/material/Theme-class.html'),
            Accordion(
                'Transform',
                'A widget that applies a transformation before painting its child.\nTransform({Key? key, required Matrix4 transform, Offset? origin, AlignmentGeometry? alignment, bool transformHitTests, Widget? child})',
                'https://api.flutter.dev/flutter/widgets/Transform-class.html'),
            Accordion(
                'Visibility',
                'Whether to show or hide a child.\nVisibility({Key? key, required Widget child, Widget replacement, bool visible, bool maintainState, bool maintainAnimation, bool maintainSize, bool maintainSemantics, bool maintainInteractivity})',
                'https://api.flutter.dev/flutter/widgets/Visibility-class.html'),
          ])),
        ),
      ),
    );
  }
}
