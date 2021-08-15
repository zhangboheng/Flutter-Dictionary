// ignore_for_file: no_logic_in_create_state, prefer_const_constructors, use_key_in_widget_constructors
import 'dart:math';
import '../widgettools/viewcode.dart';
import 'package:flutter/material.dart';
import 'package:group_list_view/group_list_view.dart';

//Set Random Colors Value
Random random = Random();
List _colorbox = [
  Color(0xFFFD9841),
  Color(0xFFF9D562),
  Color(0xFFFFDBB4),
  Color(0xFFEDB98A),
  Color(0xFFD08B5B),
  Color(0xFFAE5D29),
  Color(0xFF614335),
];
//Set Dart Catalogue
Map<String, List> _elements = {
  'Basic': [
    Viewcode(1, 'Overview', 'What is Dart language?',
        'assets/dart/dartoverview.dart'),
    Viewcode(1, 'Hello World', 'Write your first Dart code.',
        'assets/dart/firstdart.dart'),
    Viewcode(
        1,
        'Variable',
        'A variable is “a named space in the memory” that stores values.',
        'assets/dart/vardart.dart'),
  ],
  'Advanced': [
    Viewcode(
        1,
        'Operaters',
        'An expression is a special kind of statement that evaluates to a value.',
        'assets/dart/operatorsdart.dart'),
    Viewcode(1, 'Loops', 'Loops are an ideal way to repeat execution',
        'assets/dart/loopsdart.dart'),
    Viewcode(1, 'Conditions', 'A conditional/decision-making construct evaluates a condition before the instructions are executed.',
        'assets/dart/loopsdart.dart'),
  ]
};

class DartScreen extends StatefulWidget {
  final String url;
  const DartScreen(this.url);

  @override
  _MyImageScreen createState() => _MyImageScreen(url);
}

class _MyImageScreen extends State<DartScreen> {
  final String url;
  _MyImageScreen(this.url);

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
          title: Text('Dart Learning'),
        ),
        body: GroupListView(
          sectionsCount: _elements.keys.toList().length,
          countOfItemInSection: (int section) {
            return _elements.values.toList()[section].length;
          },
          itemBuilder: _itemBuilder,
          groupHeaderBuilder: (BuildContext context, int section) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Text(
                _elements.keys.toList()[section],
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: _colorbox[random.nextInt(_colorbox.length)]),
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(height: 10),
          sectionSeparatorBuilder: (context, section) => SizedBox(height: 10),
        ),
      ),
    );
  }
}

Widget _itemBuilder(BuildContext context, IndexPath index) {
  var lst = _elements.values.toList()[index.section][index.index];
  return lst;
}
