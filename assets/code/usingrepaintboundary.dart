
	// ignore_for_file: prefer_const_constructors, avoid_print, avoid_renaming_method_parameters
	
  import 'package:flutter/material.dart';
  import 'package:flutter/rendering.dart';
  import 'dart:math';
  
  void main() {
    runApp(MyApp());
  }
  
  class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Flutter Demo',
        home: HomePage(),
      );
    }
  }
  
  class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  
    @override
    State createState() => _HomePageState();
  }
  
  class _HomePageState extends State<HomePage> {
  
    final GlobalKey _paintKey = GlobalKey();
    Offset _offset = Offset.zero;
  
    Widget _buildBackground() {
      return CustomPaint(
        painter: MyExpensiveBackground(MediaQuery.of(context).size),
        isComplex: true,
        willChange: false,
      );
    }
  
    Widget _buildCursor() {
      return Listener(
        onPointerDown: _updateOffset,
        onPointerMove: _updateOffset,
        child: CustomPaint(
          key: _paintKey,
          painter: MyPointer(_offset),
          child: ConstrainedBox(
            constraints: BoxConstraints.expand(),
          ),
        ),
      );
    }
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo'),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            _buildBackground(),
            _buildCursor(),
          ],
        ),
      );
    }
  
    _updateOffset(PointerEvent event) {
      RenderBox? referenceBox = _paintKey.currentContext?.findRenderObject() as RenderBox;
      Offset offset = referenceBox.globalToLocal(event.position);
      setState(() {
        _offset = offset;
      });
    }
  }
  
  class MyExpensiveBackground extends CustomPainter {
  
    static const List<Color> colors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.pink,
      Colors.purple,
      Colors.orange,
    ];
  
    final Size _size;
  
    MyExpensiveBackground(this._size);
  
    @override
    void paint(Canvas canvas, Size size) {
      print('Running extensive painting');
      final Random rand = Random(12345);
  
      for (int i = 0; i < 10000; i++) {
        canvas.drawOval(
            Rect.fromCenter(
              center: Offset(
                rand.nextDouble() * _size.width - 100,
                rand.nextDouble() * _size.height,
              ),
              width: rand.nextDouble() * rand.nextInt(150) + 200,
              height: rand.nextDouble() * rand.nextInt(150) + 200,
            ),
            Paint()
              ..color = colors[rand.nextInt(colors.length)].withOpacity(0.3)
        );
      }
    }
  
    @override
    bool shouldRepaint(MyExpensiveBackground other) {
      return false;
    }
  }
  
  class MyPointer extends CustomPainter {
  
    final Offset _offset;
  
    MyPointer(this._offset);
  
    @override
    void paint(Canvas canvas, Size size) {
      canvas.drawCircle(
        _offset,
        10.0,
        Paint()..color = Colors.black,
      );
    }
  
    @override
    bool shouldRepaint(MyPointer old) => old._offset != _offset;
  }