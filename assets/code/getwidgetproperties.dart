// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: WidgetSizeAndPositionExample(),
    );
  }
}

class WidgetSizeAndPositionExample extends StatefulWidget {
  const WidgetSizeAndPositionExample({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _WidgetSizeAndPositionExampleState();
  }
}

class _WidgetSizeAndPositionExampleState
    extends State<WidgetSizeAndPositionExample> {
  final GlobalKey _widgetKey = GlobalKey();
  double _size = 300;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback(_getWidgetInfo);
  }

  void _getWidgetInfo(_) {
    final RenderBox renderBox =
        _widgetKey.currentContext?.findRenderObject() as RenderBox;
    _widgetKey.currentContext?.size;

    final Size size = renderBox.size;
    print('Size: ${size.width}, ${size.height}');

    final Offset offset = renderBox.localToGlobal(Offset.zero);
    print('Offset: ${offset.dx}, ${offset.dy}');
    print(
        'Position: ${(offset.dx + size.width) / 2}, ${(offset.dy + size.height) / 2}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
        backgroundColor: Colors.teal,
      ),
      body: Stack(
        children: [
          Positioned(
            left: 50,
            top: 100,
            child: AnimatedContainer(
              duration: const Duration(seconds: 3),
              key: _widgetKey,
              width: _size,
              height: _size,
              color: Colors.teal,
              onEnd: () {},
            ),
          ),
          Positioned(
            bottom: 0,
            child: OutlinedButton(
              onPressed: () {
                setState(() {
                  _size = _size == 300 ? 100 : 300;
                });
                _getWidgetInfo(_widgetKey);
              },
              child: const Text('Change size'),
            ),
          ),
        ],
      ),
    );
  }
}
