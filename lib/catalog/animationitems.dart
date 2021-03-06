// ignore_for_file: file_names, prefer_const_constructors, avoid_print
import '../widgettools/accordion.dart';
import 'package:flutter/material.dart';
import '../ad-helper.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AnimationItems extends StatefulWidget {
  const AnimationItems({Key? key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<AnimationItems> {
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
          title: const Text('Animation'),
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
                'AnimatedAlign',
                'Animated version of Align which automatically transitions the child\'s position over a given duration whenever the given alignment changes.\nAnimatedAlign({Key? key, required AlignmentGeometry alignment, Widget? child, double? heightFactor, double? widthFactor, Curve curve = Curves.linear, required Duration duration, VoidCallback? onEnd})',
                'https://api.flutter.dev/flutter/widgets/AnimatedAlign-class.html'),
            Accordion(
                'AnimatedContainer',
                'Animated version of Container that gradually changes its values over a period of time.\nAnimatedContainer({Key? key, AlignmentGeometry? alignment, EdgeInsetsGeometry? padding, Color? color, Decoration? decoration, Decoration? foregroundDecoration, double? width, double? height, BoxConstraints? constraints, EdgeInsetsGeometry? margin, Matrix4? transform, AlignmentGeometry? transformAlignment, Widget? child, Clip clipBehavior, Curve curve = Curves.linear, required Duration duration, VoidCallback? onEnd})',
                'https://api.flutter.dev/flutter/widgets/AnimatedContainer-class.html'),
            Accordion(
                'AnimatedCrossFade',
                'A widget that cross-fades between two given children and animates itself between their sizes.\nAnimatedCrossFade({Key? key, required Widget firstChild, required Widget secondChild, Curve firstCurve, Curve secondCurve, Curve sizeCurve, AlignmentGeometry alignment, required CrossFadeState crossFadeState, required Duration duration, Duration? reverseDuration, AnimatedCrossFadeBuilder layoutBuilder})',
                'https://api.flutter.dev/flutter/widgets/AnimatedCrossFade-class.html'),
            Accordion(
                'AnimatedDefaultTextStyle',
                'Animated version of DefaultTextStyle which automatically transitions the default text style (the text style to apply to descendant Text widgets without explicit style) over a given duration whenever the given style changes.\nAnimatedDefaultTextStyle({Key? key, required Widget child, required TextStyle style, TextAlign? textAlign, bool softWrap, TextOverflow overflow, int? maxLines, TextWidthBasis textWidthBasis, TextHeightBehavior? textHeightBehavior, Curve curve = Curves.linear, required Duration duration, VoidCallback? onEnd})',
                'https://api.flutter.dev/flutter/widgets/AnimatedDefaultTextStyle-class.html'),
            Accordion(
                'AnimatedOpacity',
                'Animated version of Opacity which automatically transitions the child\'s opacity over a given duration whenever the given opacity changes.\nAnimatedOpacity({Key? key, Widget? child, required double opacity, Curve curve = Curves.linear, required Duration duration, VoidCallback? onEnd, bool alwaysIncludeSemantics})',
                'https://api.flutter.dev/flutter/widgets/AnimatedOpacity-class.html'),
            Accordion(
                'AnimatedPadding',
                'Animated version of Padding which automatically transitions the indentation over a given duration whenever the given inset changes.\nAnimatedPadding({Key? key, required EdgeInsetsGeometry padding, Widget? child, Curve curve = Curves.linear, required Duration duration, VoidCallback? onEnd})',
                'https://api.flutter.dev/flutter/widgets/AnimatedPadding-class.html'),
            Accordion(
                'AnimatedPhysicalModel',
                'Animated version of PhysicalModel.\nAnimatedPhysicalModel({Key? key, required Widget child, required BoxShape shape, Clip clipBehavior, BorderRadius borderRadius, required double elevation, required Color color, bool animateColor, required Color shadowColor, bool animateShadowColor, Curve curve = Curves.linear, required Duration duration, VoidCallback? onEnd})',
                'https://api.flutter.dev/flutter/widgets/AnimatedPhysicalModel-class.html'),
            Accordion(
                'AnimatedPositioned',
                'Animated version of Positioned which automatically transitions the child\'s position over a given duration whenever the given position changes.\nAnimatedPositioned({Key? key, required Widget child, double? left, double? top, double? right, double? bottom, double? width, double? height, Curve curve = Curves.linear, required Duration duration, VoidCallback? onEnd})\nOnly works if it\'s the child of a Stack.',
                'https://api.flutter.dev/flutter/widgets/AnimatedPositioned-class.html'),
            Accordion(
                'AnimatedSize',
                'Animated widget that automatically transitions its size over a given duration whenever the given child\'s size changes.\nAnimatedSize({Key? key, Widget? child, AlignmentGeometry alignment, Curve curve, required Duration duration, Duration? reverseDuration, required TickerProvider vsync, Clip clipBehavior})',
                'https://api.flutter.dev/flutter/widgets/AnimatedSize-class.html'),
            Accordion(
                'AnimatedSwitcher',
                'A widget that by default does a cross-fade between a new widget and the widget previously set on the AnimatedSwitcher as a child.\nAnimatedSwitcher({Key? key, Widget? child, required Duration duration, Duration? reverseDuration, Curve switchInCurve, Curve switchOutCurve, AnimatedSwitcherTransitionBuilder transitionBuilder, AnimatedSwitcherLayoutBuilder layoutBuilder})',
                'https://api.flutter.dev/flutter/widgets/AnimatedSwitcher-class.html'),
            Accordion(
                'AnimatedWidget',
                'A widget that rebuilds when the given Listenable changes value.\nAnimatedWidget({Key? key, required Listenable listenable})',
                'https://api.flutter.dev/flutter/widgets/AnimatedWidget-class.html'),
            Accordion(
                'CircularProgressIndicator',
                'A material design circular progress indicator, which spins to indicate that the application is busy.\nCircularProgressIndicator({Key? key, double? value, Color? backgroundColor, Color? color, Animation<Color?>? valueColor, double strokeWidth, String? semanticsLabel, String? semanticsValue})',
                'https://api.flutter.dev/flutter/material/CircularProgressIndicator-class.html'),
            Accordion(
                'ColorTween',
                'An interpolation between two colors.\nColorTween({Color? begin, Color? end})',
                'https://api.flutter.dev/flutter/animation/ColorTween-class.html'),
            Accordion(
                'CupertinoActivityIndicator',
                'AAn iOS-style activity indicator that spins clockwise.\nCupertinoActivityIndicator({Key? key, bool animating, double radius})',
                'https://api.flutter.dev/flutter/cupertino/CupertinoActivityIndicator-class.html'),
            Accordion(
                'DecoratedBoxTransition',
                'Animated version of a DecoratedBox that animates the different properties of its Decoration.\nDecoratedBoxTransition({Key? key, required Animation<Decoration> decoration, DecorationPosition position, required Widget child})',
                'https://api.flutter.dev/flutter/widgets/DecoratedBoxTransition-class.html'),
            Accordion(
                'Dismissible',
                'A widget that can be dismissed by dragging in the indicated direction.\nDismissible({required Key key, required Widget child, Widget? background, Widget? secondaryBackground, ConfirmDismissCallback? confirmDismiss, VoidCallback? onResize, DismissDirectionCallback? onDismissed, DismissDirection direction, Duration? resizeDuration, Map<DismissDirection, double> dismissThresholds, Duration movementDuration, double crossAxisEndOffset, DragStartBehavior dragStartBehavior, HitTestBehavior behavior})',
                'https://api.flutter.dev/flutter/widgets/Dismissible-class.html'),
            Accordion(
                'FadeInImage',
                'An image that shows a placeholder image while the target image is loading, then fades in the new image when it loads.\nFadeInImage({Key? key, required ImageProvider<Object> placeholder, ImageErrorWidgetBuilder? placeholderErrorBuilder, required ImageProvider<Object> image, ImageErrorWidgetBuilder? imageErrorBuilder, bool excludeFromSemantics, String? imageSemanticLabel, Duration fadeOutDuration, Curve fadeOutCurve, Duration fadeInDuration, Curve fadeInCurve, double? width, double? height, BoxFit? fit, AlignmentGeometry alignment, ImageRepeat repeat, bool matchTextDirection})',
                'https://api.flutter.dev/flutter/widgets/FadeInImage-class.html'),
            Accordion(
                'FadeTransition',
                'Animates the opacity of a widget.\nFadeTransition({Key? key, required Animation<double> opacity, bool alwaysIncludeSemantics, Widget? child})',
                'https://api.flutter.dev/flutter/widgets/FadeTransition-class.html'),
            Accordion(
                'Hero',
                'A widget that marks its child as being a candidate for hero animations.\nHero({Key? key, required Object tag, CreateRectTween? createRectTween, HeroFlightShuttleBuilder? flightShuttleBuilder, HeroPlaceholderBuilder? placeholderBuilder, bool transitionOnUserGestures, required Widget child})',
                'https://api.flutter.dev/flutter/widgets/Hero-class.html'),
            Accordion(
                'InteractiveViewer',
                'A widget that enables pan and zoom interactions with its child.\nInteractiveViewer({Key? key, Clip clipBehavior, bool alignPanAxis, EdgeInsets boundaryMargin, bool constrained, double maxScale, double minScale, GestureScaleEndCallback? onInteractionEnd, GestureScaleStartCallback? onInteractionStart, GestureScaleUpdateCallback? onInteractionUpdate, bool panEnabled, bool scaleEnabled, TransformationController? transformationController, required Widget child})',
                'https://api.flutter.dev/flutter/widgets/InteractiveViewer-class.html'),
            Accordion(
                'LinearProgressIndicator',
                'A material design linear progress indicator, also known as a progress bar.\nLinearProgressIndicator({Key? key, double? value, Color? backgroundColor, Color? color, Animation<Color?>? valueColor, double? minHeight, String? semanticsLabel, String? semanticsValue})',
                'https://api.flutter.dev/flutter/material/LinearProgressIndicator-class.html'),
            Accordion(
                'LongPressDraggable',
                'Makes its child draggable starting from long press.\nLongPressDraggable({Key? key, required Widget child, required Widget feedback, T? data, Axis? axis, Widget? childWhenDragging, Offset feedbackOffset = Offset.zero',
                'https://api.flutter.dev/flutter/widgets/LongPressDraggable-class.html'),
            Accordion(
                'PositionedTransition',
                'Animated version of Positioned which takes a specific Animation<RelativeRect> to transition the child\'s position from a start position to an end position over the lifetime of the animation.\nPositionedTransition({Key? key, required Animation<RelativeRect> rect, required Widget child})',
                'https://api.flutter.dev/flutter/widgets/PositionedTransition-class.html'),
            Accordion(
                'RefreshIndicator',
                'A widget that supports the Material "swipe to refresh" idiom.\n RefreshIndicator({Key? key, required Widget child, double displacement, double edgeOffset, required RefreshCallback onRefresh, Color? color, Color? backgroundColor, ScrollNotificationPredicate notificationPredicate, String? semanticsLabel, String? semanticsValue, double strokeWidth, RefreshIndicatorTriggerMode triggerMode})',
                'https://api.flutter.dev/flutter/material/RefreshIndicator-class.html'),
            Accordion(
                'RotationTransition',
                'Animates the rotation of a widget.\nRotationTransition({Key? key, required Animation<double> turns, Alignment alignment, Widget? child})',
                'https://api.flutter.dev/flutter/widgets/RotationTransition-class.html'),
            Accordion(
                'SlideTransition',
                'Animates the position of a widget relative to its normal position.\nSlideTransition({Key? key, required Animation<Offset> position, bool transformHitTests, TextDirection? textDirection, Widget? child})',
                'https://api.flutter.dev/flutter/widgets/SlideTransition-class.html'),
            Accordion(
                'SizeTransition',
                'Animates its own size and clips and aligns its child.\nSizeTransition({Key? key, Axis axis, required Animation<double> sizeFactor, double axisAlignment, Widget? child})',
                'https://api.flutter.dev/flutter/widgets/SizeTransition-class.html'),
          ])),
        ),
      ),
    );
  }
}
