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
    Viewcode(
        1,
        'Conditions',
        'A conditional/decision-making construct evaluates a condition before the instructions are executed.',
        'assets/dart/loopsdart.dart'),
    Viewcode(
        1,
        'Numbers',
        'The num type is inherited by the int and double types.',
        'assets/dart/numbersdart.dart'),
    Viewcode(
        1,
        'String',
        'The String data type represents a sequence of characters. A Dart string is a sequence of UTF 16 code units.',
        'assets/dart/stringdart.dart'),
    Viewcode(
        1,
        'Boolean',
        'The syntax for declaring a Boolean variable in DART and more',
        'assets/dart/booleandart.dart'),
    Viewcode(
        1,
        'Lists',
        'A very commonly used collection in programming is an array and more.',
        'assets/dart/listsdart.dart'),
    Viewcode(
        1,
        'Maps',
        'A Map is a dynamic collection. In other words, Maps can grow and shrink at runtime.',
        'assets/dart/mapsdart.dart'),
    Viewcode(
        1,
        'Enumeration',
        'An enumeration is used for defining named constant values. An enumerated type is declared using the enum keyword.',
        'assets/dart/enumerationdart.dart'),
    Viewcode(1, 'Functions', 'How to define a function and more...',
        'assets/dart/funcsdart.dart'),
    Viewcode(
        1,
        'Interfaces',
        'An interface defines the syntax that any entity must adhere to.',
        'assets/dart/interfacesdart.dart'),
    Viewcode(
        1,
        'Class',
        'Class supports object-oriented programming features like classes, interfaces, etc.',
        'assets/dart/classdart.dart'),
    Viewcode(
        1,
        'Object',
        'Object-Oriented Programming defines an object as "any entity that has a defined boundary."',
        'assets/dart/objectdart.dart'),
    Viewcode(
        1,
        'Collection',
        'Dart, unlike other programming languages, doesn’t support arrays.',
        'assets/dart/collectiondart.dart'),
    Viewcode(
        1,
        'Packages',
        'A package is a mechanism to encapsulate a group of programming units.',
        'assets/dart/packagesdart.dart'),
    Viewcode(
        1,
        'Errors',
        'When you build-in Dart application meet errors, how to deal with them.',
        'assets/dart/errorsdart.dart'),
    Viewcode(
        1,
        'Typedef',
        'A typedef, or a function-type alias, helps to define pointers to executable code within memory.',
        'assets/dart/typedefdart.dart'),
    Viewcode(
        1,
        'Library',
        'A library in a programming language represents a collection of routines.',
        'assets/dart/libraraydart.dart'),
    Viewcode(1, 'Async', 'One seconde do more things.',
        'assets/dart/asyncdart.dart'),
    Viewcode(1, 'Concurrency', 'One seconde do more things.',
        'assets/dart/concurrencydart.dart'),
  ],
  'Packages': [
    Viewcode(
        1,
        'dart:math',
        'Mathematical constants and functions, plus a random number generator.',
        'assets/dart/importmath.dart'),
  ],
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
