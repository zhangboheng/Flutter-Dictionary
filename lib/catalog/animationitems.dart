// ignore_for_file: file_names
import 'accordion.dart';
import 'package:flutter/material.dart';

class AnimationItems extends StatefulWidget {
  const AnimationItems({Key? key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<AnimationItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
            child: Column(children: const <Widget>[
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
              'CircularProgressIndicator',
              'A material design circular progress indicator, which spins to indicate that the application is busy.\nCircularProgressIndicator({Key? key, double? value, Color? backgroundColor, Color? color, Animation<Color?>? valueColor, double strokeWidth, String? semanticsLabel, String? semanticsValue})',
              'https://api.flutter.dev/flutter/material/CircularProgressIndicator-class.html'),
          Accordion(
              'ColorTween',
              'An interpolation between two colors.\nColorTween({Color? begin, Color? end})',
              'https://api.flutter.dev/flutter/animation/ColorTween-class.html'),
          Accordion(
              'LinearProgressIndicator',
              'A material design linear progress indicator, also known as a progress bar.\nLinearProgressIndicator({Key? key, double? value, Color? backgroundColor, Color? color, Animation<Color?>? valueColor, double? minHeight, String? semanticsLabel, String? semanticsValue})',
              'https://api.flutter.dev/flutter/material/LinearProgressIndicator-class.html'),
        ])),
      ),
    );
  }
}
