// ignore_for_file: file_names
import '../widgettools/accordion.dart';
import 'package:flutter/material.dart';

class IconItems extends StatefulWidget {
  const IconItems({Key? key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<IconItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
            child: Column(children: const <Widget>[
          Accordion(
              'AssetImage',
              'Fetches an image from an AssetBundle, having determined the exact image to use based on the context.\nAssetImage(String assetName, {AssetBundle? bundle, String? package})',
              'https://api.flutter.dev/flutter/painting/AssetImage-class.html'),
          Accordion(
              'Canvas',
              'An interface for recording graphical operations.\nCanvas(PictureRecorder recorder, [Rect? cullRect])',
              'https://api.flutter.dev/flutter/dart-ui/Canvas-class.html'),
          Accordion(
              'CircleAvatar',
              'A circle that represents a user.\nCircleAvatar({Key? key, Widget? child, Color? backgroundColor, ImageProvider<Object>? backgroundImage, ImageProvider<Object>? foregroundImage, ImageErrorListener? onBackgroundImageError, ImageErrorListener? onForegroundImageError, Color? foregroundColor, double? radius, double? minRadius, double? maxRadius})',
              'https://api.flutter.dev/flutter/material/CircleAvatar-class.html'),
          Accordion(
              'ClipOval',
              'A widget that clips its child using an oval.\nClipOval({Key? key, CustomClipper<Rect>? clipper, Clip clipBehavior, Widget? child})',
              'https://api.flutter.dev/flutter/widgets/ClipOval-class.html'),
          Accordion(
              'ClipRect',
              'A widget that clips its child using a rectangle.\nClipRect({Key? key, CustomClipper<Rect>? clipper, Clip clipBehavior, Widget? child})',
              'https://api.flutter.dev/flutter/widgets/ClipRect-class.html'),
          Accordion(
              'ClipRRect',
              'A widget that clips its child using a rounded rectangle.\nClipRRect({Key? key, BorderRadius? borderRadius, CustomClipper<RRect>? clipper, Clip clipBehavior, Widget? child})',
              'https://api.flutter.dev/flutter/widgets/ClipRRect-class.html'),
          Accordion(
              'FlutterLogo',
              'The Flutter logo, in widget form.\n({Key? key, double? size, Color textColor, FlutterLogoStyle style, Duration duration, Curve curve})',
              'https://api.flutter.dev/flutter/material/FlutterLogo-class.html'),
          Accordion(
              'Icon',
              'A graphical icon widget drawn with a glyph from a font described in an IconData such as material\'s predefined IconDatas in Icons.\nIcon(IconData? icon, {Key? key, double? size, Color? color, String? semanticLabel, TextDirection? textDirection})',
              'https://api.flutter.dev/flutter/material/Icons-class.html'),
          Accordion(
              'Image',
              'Opaque handle to raw decoded image data (pixels).\nImage({Key? key, required ImageProvider<Object> image, ImageFrameBuilder? frameBuilder, ImageLoadingBuilder? loadingBuilder, ImageErrorWidgetBuilder? errorBuilder, String? semanticLabel, bool excludeFromSemantics, double? width, double? height, Color? color, BlendMode? colorBlendMode, BoxFit? fit, AlignmentGeometry alignment, ImageRepeat repeat, Rect? centerSlice, bool matchTextDirection, bool gaplessPlayback, bool isAntiAlias, FilterQuality filterQuality})\n'
                  'Image.asset(String name, {Key? key, AssetBundle? bundle, ImageFrameBuilder? frameBuilder, ImageErrorWidgetBuilder? errorBuilder, String? semanticLabel, bool excludeFromSemantics, double? scale, double? width, double? height, Color? color, BlendMode? colorBlendMode, BoxFit? fit, AlignmentGeometry alignment, ImageRepeat repeat, Rect? centerSlice, bool matchTextDirection, bool gaplessPlayback, bool isAntiAlias, String? package, FilterQuality filterQuality, int? cacheWidth, int? cacheHeight})\n'
                  'Image.file(File file, {Key? key, double scale = 1.0, ImageFrameBuilder? frameBuilder, ImageErrorWidgetBuilder? errorBuilder, String? semanticLabel, bool excludeFromSemantics, double? width, double? height, Color? color, BlendMode? colorBlendMode, BoxFit? fit, AlignmentGeometry alignment, ImageRepeat repeat, Rect? centerSlice, bool matchTextDirection, bool gaplessPlayback, bool isAntiAlias, FilterQuality filterQuality, int? cacheWidth, int? cacheHeight})\n'
                  'Image.memory(Uint8List bytes, {Key? key, double scale = 1.0, ImageFrameBuilder? frameBuilder, ImageErrorWidgetBuilder? errorBuilder, String? semanticLabel, bool excludeFromSemantics, double? width, double? height, Color? color, BlendMode? colorBlendMode, BoxFit? fit, AlignmentGeometry alignment, ImageRepeat repeat, Rect? centerSlice, bool matchTextDirection, bool gaplessPlayback, bool isAntiAlias, FilterQuality filterQuality, int? cacheWidth, int? cacheHeight})\n'
                  'Image.network(String src, {Key? key, double scale = 1.0, ImageFrameBuilder? frameBuilder, ImageLoadingBuilder? loadingBuilder, ImageErrorWidgetBuilder? errorBuilder, String? semanticLabel, bool excludeFromSemantics, double? width, double? height, Color? color, BlendMode? colorBlendMode, BoxFit? fit, AlignmentGeometry alignment, ImageRepeat repeat, Rect? centerSlice, bool matchTextDirection, bool gaplessPlayback, FilterQuality filterQuality, bool isAntiAlias, Map<String, String>? headers, int? cacheWidth, int? cacheHeight})',
              'https://api.flutter.dev/flutter/dart-ui/Image-class.html'),
          Accordion(
              'RawImage',
              'A widget that displays a dart:ui.Image directly.\nRawImage({Key? key, Image? image, String? debugImageLabel, double? width, double? height, double scale, Color? color, BlendMode? colorBlendMode, BoxFit? fit, AlignmentGeometry alignment, ImageRepeat repeat, Rect? centerSlice, bool matchTextDirection, bool invertColors, FilterQuality filterQuality, bool isAntiAlias})',
              'https://api.flutter.dev/flutter/widgets/RawImage-class.html'),
        ])),
      ),
    );
  }
}
